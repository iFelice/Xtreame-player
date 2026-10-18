package O1;

import android.util.Log;
import android.view.View;
import androidx.recyclerview.widget.RecyclerView;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.WeakHashMap;
import org.videolan.libvlc.interfaces.IMediaList;

/* JADX INFO: loaded from: classes.dex */
public abstract class c0 {

    /* JADX INFO: renamed from: Z, reason: collision with root package name */
    public static final List f5352Z = Collections.emptyList();

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final View f5353G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public WeakReference f5354H;

    /* JADX INFO: renamed from: P, reason: collision with root package name */
    public int f5362P;

    /* JADX INFO: renamed from: X, reason: collision with root package name */
    public RecyclerView f5370X;

    /* JADX INFO: renamed from: Y, reason: collision with root package name */
    public C f5371Y;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f5355I = -1;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f5356J = -1;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public long f5357K = -1;

    /* JADX INFO: renamed from: L, reason: collision with root package name */
    public int f5358L = -1;

    /* JADX INFO: renamed from: M, reason: collision with root package name */
    public int f5359M = -1;

    /* JADX INFO: renamed from: N, reason: collision with root package name */
    public c0 f5360N = null;

    /* JADX INFO: renamed from: O, reason: collision with root package name */
    public c0 f5361O = null;

    /* JADX INFO: renamed from: Q, reason: collision with root package name */
    public ArrayList f5363Q = null;

    /* JADX INFO: renamed from: R, reason: collision with root package name */
    public List f5364R = null;

    /* JADX INFO: renamed from: S, reason: collision with root package name */
    public int f5365S = 0;

    /* JADX INFO: renamed from: T, reason: collision with root package name */
    public p142s1.g f5366T = null;

    /* JADX INFO: renamed from: U, reason: collision with root package name */
    public boolean f5367U = false;

    /* JADX INFO: renamed from: V, reason: collision with root package name */
    public int f5368V = 0;

    /* JADX INFO: renamed from: W, reason: collision with root package name */
    public int f5369W = -1;

    public c0(View view) {
        if (view == null) {
            throw new IllegalArgumentException("itemView may not be null");
        }
        this.f5353G = view;
    }

    public final void a(Object obj) {
        if (obj == null) {
            b(1024);
            return;
        }
        if ((1024 & this.f5362P) == 0) {
            if (this.f5363Q == null) {
                ArrayList arrayList = new ArrayList();
                this.f5363Q = arrayList;
                this.f5364R = Collections.unmodifiableList(arrayList);
            }
            this.f5363Q.add(obj);
        }
    }

    public final void b(int i8) {
        this.f5362P = i8 | this.f5362P;
    }

    public final int c() {
        RecyclerView recyclerView;
        C adapter;
        int iJ;
        if (this.f5371Y == null || (recyclerView = this.f5370X) == null || (adapter = recyclerView.getAdapter()) == null || (iJ = this.f5370X.J(this)) == -1 || this.f5371Y != adapter) {
            return -1;
        }
        return iJ;
    }

    public final int d() {
        int i8 = this.f5359M;
        return i8 == -1 ? this.f5355I : i8;
    }

    public final List e() {
        ArrayList arrayList;
        return ((this.f5362P & 1024) != 0 || (arrayList = this.f5363Q) == null || arrayList.size() == 0) ? f5352Z : this.f5364R;
    }

    public final boolean f(int i8) {
        return (i8 & this.f5362P) != 0;
    }

    public final boolean g() {
        return (this.f5362P & 1) != 0;
    }

    public final boolean h() {
        return (this.f5362P & 4) != 0;
    }

    public final boolean i() {
        if ((this.f5362P & 16) == 0) {
            WeakHashMap weakHashMap = N.N.f4843a;
            if (!this.f5353G.hasTransientState()) {
                return true;
            }
        }
        return false;
    }

    public final boolean j() {
        return (this.f5362P & 8) != 0;
    }

    public final boolean k() {
        return this.f5366T != null;
    }

    public final boolean l() {
        return (this.f5362P & 256) != 0;
    }

    public final boolean m() {
        return (this.f5362P & 2) != 0;
    }

    public final void n(int i8, boolean z7) {
        if (this.f5356J == -1) {
            this.f5356J = this.f5355I;
        }
        if (this.f5359M == -1) {
            this.f5359M = this.f5355I;
        }
        if (z7) {
            this.f5359M += i8;
        }
        this.f5355I += i8;
        View view = this.f5353G;
        if (view.getLayoutParams() != null) {
            ((M) view.getLayoutParams()).f5296c = true;
        }
    }

    public final void o() {
        if (RecyclerView.f9605i1 && l()) {
            throw new IllegalStateException("Attempting to reset temp-detached ViewHolder: " + this + ". ViewHolders should be fully detached before resetting.");
        }
        this.f5362P = 0;
        this.f5355I = -1;
        this.f5356J = -1;
        this.f5357K = -1L;
        this.f5359M = -1;
        this.f5365S = 0;
        this.f5360N = null;
        this.f5361O = null;
        ArrayList arrayList = this.f5363Q;
        if (arrayList != null) {
            arrayList.clear();
        }
        this.f5362P &= -1025;
        this.f5368V = 0;
        this.f5369W = -1;
        RecyclerView.l(this);
    }

    public final void p(boolean z7) {
        int i8 = this.f5365S;
        int i9 = z7 ? i8 - 1 : i8 + 1;
        this.f5365S = i9;
        if (i9 < 0) {
            this.f5365S = 0;
            if (RecyclerView.f9605i1) {
                throw new RuntimeException("isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
            }
            Log.e("View", "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for " + this);
        } else if (!z7 && i9 == 1) {
            this.f5362P |= 16;
        } else if (z7 && i9 == 0) {
            this.f5362P &= -17;
        }
        if (RecyclerView.f9606j1) {
            Log.d("RecyclerView", "setIsRecyclable val:" + z7 + ":" + this);
        }
    }

    public final boolean q() {
        return (this.f5362P & 128) != 0;
    }

    public final boolean r() {
        return (this.f5362P & 32) != 0;
    }

    public final String toString() {
        StringBuilder sbL = p000a.r.l(getClass().isAnonymousClass() ? "ViewHolder" : getClass().getSimpleName(), "{");
        sbL.append(Integer.toHexString(hashCode()));
        sbL.append(" position=");
        sbL.append(this.f5355I);
        sbL.append(" id=");
        sbL.append(this.f5357K);
        sbL.append(", oldPos=");
        sbL.append(this.f5356J);
        sbL.append(", pLpos:");
        sbL.append(this.f5359M);
        StringBuilder sb = new StringBuilder(sbL.toString());
        if (k()) {
            sb.append(" scrap ");
            sb.append(this.f5367U ? "[changeScrap]" : "[attachedScrap]");
        }
        if (h()) {
            sb.append(" invalid");
        }
        if (!g()) {
            sb.append(" unbound");
        }
        if ((this.f5362P & 2) != 0) {
            sb.append(" update");
        }
        if (j()) {
            sb.append(" removed");
        }
        if (q()) {
            sb.append(" ignored");
        }
        if (l()) {
            sb.append(" tmpDetached");
        }
        if (!i()) {
            sb.append(" not recyclable(" + this.f5365S + ")");
        }
        if ((this.f5362P & IMediaList.Event.ItemAdded) != 0 || h()) {
            sb.append(" undefined adapter position");
        }
        if (this.f5353G.getParent() == null) {
            sb.append(" no parent");
        }
        sb.append("}");
        return sb.toString();
    }
}
