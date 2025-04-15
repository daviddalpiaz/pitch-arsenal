# get current data
current_data = format(Sys.Date(), "%Y-%m-%d")

# download data
data = sabRmetrics::download_baseballsavant(
    start_date = "2025-01-01",
    end_date = current_data,
)

# filter to Cole
boyd = dplyr::filter(data, pitcher_id == 571510)

# save data
saveRDS(boyd, file = "boyd.rds")
