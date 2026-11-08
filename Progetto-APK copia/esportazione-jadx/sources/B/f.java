package B;

import N.E;
import N.N;
import O1.C0318q;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Comparator;
import java.util.List;
import java.util.Map;
import java.util.WeakHashMap;
import p043f3.o;

/* JADX INFO: loaded from: classes.dex */
public final class f implements Comparator {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f676G;

    public /* synthetic */ f(int i8) {
        this.f676G = i8;
    }

    public final int a(View view, View view2) {
        switch (this.f676G) {
            case 0:
                WeakHashMap weakHashMap = N.f4843a;
                float fG = E.g(view);
                float fG2 = E.g(view2);
                if (fG > fG2) {
                    return -1;
                }
                return fG < fG2 ? 1 : 0;
            default:
                p003a2.d dVar = (p003a2.d) view.getLayoutParams();
                p003a2.d dVar2 = (p003a2.d) view2.getLayoutParams();
                boolean z7 = dVar.f8638a;
                if (z7 != dVar2.f8638a) {
                    return z7 ? 1 : -1;
                }
                return dVar.f8642e - dVar2.f8642e;
        }
    }

    /* JADX WARN: Code duplicated, block: B:31:0x0087 A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:32:0x0089 A[RETURN, SYNTHETIC] */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        switch (this.f676G) {
            case 0:
                return a((View) obj, (View) obj2);
            case 1:
                C0318q c0318q = (C0318q) obj;
                C0318q c0318q2 = (C0318q) obj2;
                RecyclerView recyclerView = c0318q.f5503d;
                if ((recyclerView == null) != (c0318q2.f5503d == null)) {
                    if (recyclerView == null) {
                        return 1;
                    }
                    return -1;
                }
                boolean z7 = c0318q.f5500a;
                if (z7 != c0318q2.f5500a) {
                    if (z7) {
                        return -1;
                    }
                    return 1;
                }
                int i8 = c0318q2.f5501b - c0318q.f5501b;
                if (i8 != 0) {
                    return i8;
                }
                int i9 = c0318q.f5502c - c0318q2.f5502c;
                if (i9 != 0) {
                    return i9;
                }
                return 0;
            case 2:
                return ((p003a2.c) obj).f8634b - ((p003a2.c) obj2).f8634b;
            case 3:
                return a((View) obj, (View) obj2);
            case 4:
                return ((byte[]) obj).length - ((byte[]) obj2).length;
            case 5:
                List list = o.f25189f;
                return list.indexOf((String) obj) - list.indexOf((String) obj2);
            case 6:
                return Long.compare(((Long) obj).longValue(), ((Long) obj2).longValue());
            default:
                Map map = (Map) obj;
                Map map2 = (Map) obj2;
                SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyyMMddHHmmss");
                try {
                    return simpleDateFormat.parse((String) map.get("end")).compareTo(simpleDateFormat.parse((String) map2.get("end")));
                } catch (ParseException e8) {
                    throw new IllegalArgumentException(e8);
                }
        }
    }
}
