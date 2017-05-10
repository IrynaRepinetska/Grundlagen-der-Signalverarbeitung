file = fopen(strrep('data\shake.txt', '\', filesep));
input = fread(file);
fclose(file);

[characters, occurences] = haeufigkeit(input);

relativeFrequency = occurences ./ numel(input);
singleInformationContent = -relativeFrequency .* reallog(relativeFrequency) ./ reallog(2);
totalInformationContent = sum(singleInformationContent);

maximumInformationContent = reallog(256) / reallog(2);
redundancy = maximumInformationContent - totalInformationContent;

disp(['Die Entropie der eingelesenen Datei ist ', num2str(totalInformationContent), '.']);
disp(['Die maximal m�gliche Entropie bei ASCII-Kodierung w�re ', num2str(maximumInformationContent), ...
      ', die Redundanz betr�gt also ', num2str(redundancy), '!']);