package K0;

import D1.Q;
import androidx.media3.ui.TrackSelectionView;
import java.util.Comparator;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class t implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f4447G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ Object f4448H;

    public /* synthetic */ t(Object obj, int i8) {
        this.f4447G = i8;
        this.f4448H = obj;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i8 = this.f4447G;
        Object obj3 = this.f4448H;
        switch (i8) {
            case 0:
                y yVar = (y) obj3;
                return yVar.b(obj2) - yVar.b(obj);
            default:
                Q q7 = (Q) obj;
                Q q8 = (Q) obj2;
                int i9 = TrackSelectionView.f9521U;
                return ((Comparator) obj3).compare(q7.f2114a.f26949b.f26860d[q7.f2115b], q8.f2114a.f26949b.f26860d[q8.f2115b]);
        }
    }
}
