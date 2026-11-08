package O1;

import androidx.recyclerview.widget.StaggeredGridLayoutManager;
import java.util.Arrays;

/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f5405a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f5406b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f5407c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f5408d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f5409e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int[] f5410f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final /* synthetic */ StaggeredGridLayoutManager f5411g;

    public h0(StaggeredGridLayoutManager staggeredGridLayoutManager) {
        this.f5411g = staggeredGridLayoutManager;
        a();
    }

    public final void a() {
        this.f5405a = -1;
        this.f5406b = Integer.MIN_VALUE;
        this.f5407c = false;
        this.f5408d = false;
        this.f5409e = false;
        int[] iArr = this.f5410f;
        if (iArr != null) {
            Arrays.fill(iArr, -1);
        }
    }
}
