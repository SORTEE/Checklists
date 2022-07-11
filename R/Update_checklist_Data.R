#' Get local version of the Checklist
#' Need googlesheets authorisation (you will be prompted to input google account info)
#' @return .RDS of the checklist data saved to the data folder
#' @export

update_local_checklist<-function(){
checklist_sheet<-googlesheets4::read_sheet(ss = "https://docs.google.com/spreadsheets/d/1BseHvF_g-amYjgKFhsv93Za6zfyXcmFRu5igCyt-i7w/edit#gid=0")
saveRDS(checklist_sheet, "data/checklist_data.RDS")
}
