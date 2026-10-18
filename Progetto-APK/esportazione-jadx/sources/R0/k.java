package R0;

import O0.Z;
import android.util.SparseArray;
import android.util.SparseBooleanArray;
import com.google.protobuf.U2;
import java.util.Map;
import java.util.Objects;
import okhttp3.internal.ws.WebSocketProtocol;
import p094m0.j0;
import p094m0.k0;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class k extends k0 {

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public static final k f6182W = new k(new j());

    /* JADX INFO: renamed from: F, reason: collision with root package name */
    public final boolean f6183F;

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final boolean f6184G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final boolean f6185H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final boolean f6186I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final boolean f6187J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public final boolean f6188K;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public final boolean f6189L;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public final boolean f6190M;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public final boolean f6191N;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public final boolean f6192O;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public final boolean f6193P;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public final boolean f6194Q;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public final boolean f6195R;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public final boolean f6196S;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public final boolean f6197T;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public final SparseArray f6198U;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public final SparseBooleanArray f6199V;

    static {
        U2.r(1000, WebSocketProtocol.CLOSE_CLIENT_GOING_AWAY, 1002, 1003, 1004);
        U2.r(WebSocketProtocol.CLOSE_NO_STATUS_CODE, 1006, 1007, 1008, 1009);
        U2.r(1010, 1011, 1012, 1013, 1014);
        M.L(1015);
        M.L(1016);
        M.L(1017);
        M.L(1018);
    }

    public k(j jVar) {
        super(jVar);
        this.f6183F = jVar.f6165F;
        this.f6184G = jVar.f6166G;
        this.f6185H = jVar.f6167H;
        this.f6186I = jVar.f6168I;
        this.f6187J = jVar.f6169J;
        this.f6188K = jVar.f6170K;
        this.f6189L = jVar.f6171L;
        this.f6190M = jVar.f6172M;
        this.f6191N = jVar.f6173N;
        this.f6192O = jVar.f6174O;
        this.f6193P = jVar.f6175P;
        this.f6194Q = jVar.f6176Q;
        this.f6195R = jVar.f6177R;
        this.f6196S = jVar.f6178S;
        this.f6197T = jVar.f6179T;
        this.f6198U = jVar.f6180U;
        this.f6199V = jVar.f6181V;
    }

    @Override // p094m0.k0
    public final j0 a() {
        return new j(this);
    }

    @Override // p094m0.k0
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || k.class != obj.getClass()) {
            return false;
        }
        k kVar = (k) obj;
        if (super.equals(kVar) && this.f6183F == kVar.f6183F && this.f6184G == kVar.f6184G && this.f6185H == kVar.f6185H && this.f6186I == kVar.f6186I && this.f6187J == kVar.f6187J && this.f6188K == kVar.f6188K && this.f6189L == kVar.f6189L && this.f6190M == kVar.f6190M && this.f6191N == kVar.f6191N && this.f6192O == kVar.f6192O && this.f6193P == kVar.f6193P && this.f6194Q == kVar.f6194Q && this.f6195R == kVar.f6195R && this.f6196S == kVar.f6196S && this.f6197T == kVar.f6197T) {
            SparseBooleanArray sparseBooleanArray = this.f6199V;
            int size = sparseBooleanArray.size();
            SparseBooleanArray sparseBooleanArray2 = kVar.f6199V;
            if (sparseBooleanArray2.size() == size) {
                for (int i8 = 0; i8 < size; i8++) {
                    if (sparseBooleanArray2.indexOfKey(sparseBooleanArray.keyAt(i8)) >= 0) {
                    }
                }
                SparseArray sparseArray = this.f6198U;
                int size2 = sparseArray.size();
                SparseArray sparseArray2 = kVar.f6198U;
                if (sparseArray2.size() == size2) {
                    for (int i9 = 0; i9 < size2; i9++) {
                        int iIndexOfKey = sparseArray2.indexOfKey(sparseArray.keyAt(i9));
                        if (iIndexOfKey >= 0) {
                            Map map = (Map) sparseArray.valueAt(i9);
                            Map map2 = (Map) sparseArray2.valueAt(iIndexOfKey);
                            if (map2.size() == map.size()) {
                                for (Map.Entry entry : map.entrySet()) {
                                    Z z7 = (Z) entry.getKey();
                                    if (!map2.containsKey(z7) || !Objects.equals(entry.getValue(), map2.get(z7))) {
                                    }
                                }
                            }
                        }
                    }
                    return true;
                }
            }
        }
        return false;
    }

    @Override // p094m0.k0
    public final int hashCode() {
        return ((((((((((((((((((((((((((((((super.hashCode() + 31) * 31) + (this.f6183F ? 1 : 0)) * 31) + (this.f6184G ? 1 : 0)) * 31) + (this.f6185H ? 1 : 0)) * 31) + (this.f6186I ? 1 : 0)) * 31) + (this.f6187J ? 1 : 0)) * 31) + (this.f6188K ? 1 : 0)) * 31) + (this.f6189L ? 1 : 0)) * 31) + (this.f6190M ? 1 : 0)) * 31) + (this.f6191N ? 1 : 0)) * 31) + (this.f6192O ? 1 : 0)) * 31) + (this.f6193P ? 1 : 0)) * 31) + (this.f6194Q ? 1 : 0)) * 31) + (this.f6195R ? 1 : 0)) * 31) + (this.f6196S ? 1 : 0)) * 31) + (this.f6197T ? 1 : 0);
    }
}
