save_external_data <- function(file_name, driveurl) {
  # Path to the parent directory
  parent_dir <- dirname(getwd())
  
  # Define the external data directory (one level up)
  external_data_dir <- file.path(parent_dir, "external_data")
  
  # Ensure the directory exists
  if (!dir.exists(external_data_dir)) {
    dir.create(external_data_dir, recursive = TRUE)
  }
  
  # Define the destination file path in the external directory
  dest_file <- file.path(external_data_dir, file_name)
  
  # Download the dataset if it doesn't exist
  if (!file.exists(dest_file)) {
    drive_download(as_id(driveurl),
                   path = dest_file, overwrite = TRUE)
  }
  return(dest_file)
}
