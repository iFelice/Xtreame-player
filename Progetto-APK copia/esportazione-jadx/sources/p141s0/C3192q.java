package p141s0;

import java.util.Map;
import p190y4.l;

/* JADX INFO: renamed from: s0.q, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class C3192q implements l {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f29991G;

    @Override // p190y4.l
    public final boolean apply(Object obj) {
        switch (this.f29991G) {
            case 0:
                return ((Map.Entry) obj).getKey() != null;
            default:
                return ((String) obj) != null;
        }
    }
}
