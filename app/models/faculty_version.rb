class FacultyVersion < PaperTrail::Version
  self.faculties = :faculty_versions
  self.sequence_name = :faculty_version_id_seq
end
