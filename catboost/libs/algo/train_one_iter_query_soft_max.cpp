#include "train_templ.h"

template void TrainOneIter<TQuerySoftMaxError>(const TDataset&, const TDatasetPtrs&, TLearnContext*);
