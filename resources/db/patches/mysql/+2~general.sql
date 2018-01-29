# Alter tables related to releases table to add foreign keys to them

# Alter tables related to releases table to add foreign keys to them

ALTER TABLE audio_data ADD CONSTRAINT FK_ad_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE par_hashes ADD CONSTRAINT FK_ph_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE release_comments ADD CONSTRAINT FK_rc_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE releases_groups ADD CONSTRAINT FK_rg_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE release_unique ADD CONSTRAINT FK_ru_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE releaseextrafull ADD CONSTRAINT FK_ref_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE release_files ADD CONSTRAINT FK_rf_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE release_nfos ADD CONSTRAINT FK_rn_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE release_search_data ADD CONSTRAINT FK_rsd_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE release_subtitles ADD CONSTRAINT FK_rs_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE users_releases ADD CONSTRAINT FK_ur_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE video_data ADD CONSTRAINT FK_vd_releases FOREIGN KEY (releases_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;
ALTER TABLE dnzb_failures ADD CONSTRAINT FK_df_releases FOREIGN KEY (release_id) REFERENCES releases(id) ON DELETE CASCADE ON UPDATE CASCADE;












