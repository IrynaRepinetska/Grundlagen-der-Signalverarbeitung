file = fopen(strrep('data\shake.txt', '\', filesep));
input = fread(file);
fclose(file);

[characters, occurences] = haeufigkeit(input);

relativeFrequency = occurences ./ numel(input);
singleInformationContent = -relativeFrequency .* reallog(relativeFrequency) ./ reallog(2);
totalInformationContent = sum(singleInformationContent);

maximumInformationContent = reallog(256) / reallog(2);
redundancy = maximumInformationContent - totalInformationContent;

disp(['The average information count (entropy) of the content of the file is ', num2str(totalInformationContent), '.']);
disp(['The maximum possible information count (entropy) with ASCII encoding would be ', num2str(maximumInformationContent), ...
      ', so redundancy is ', num2str(redundancy), '!']);