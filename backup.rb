require 'json'
require 'date'

def lambda_handler(event:, context:)
   run_id = DateTime.now.to_s

system(
  "mysqldump --column-statistics=0  --single-transaction --quick --host=#{ENV['RDS_HOST']} --user=#{ENV['RDS_USER']} --password=#{ENV['RDS_PASSWORD']} #{ENV['db']} | gzip | " \
   "`aws s3 cp - s3://#{ENV['BACKUP_BUCKET']}/#{run_id}`"
  )

end
