package K3;

import android.view.accessibility.AccessibilityNodeInfo;
import com.google.android.gms.common.internal.InterfaceC0630f;

/* JADX INFO: renamed from: K3.g, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0234g implements InterfaceC0630f, W2.b {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Object f4552G;

    public /* synthetic */ C0234g(Object obj) {
        this.f4552G = obj;
    }

    public static C0234g a(int i8, int i9, int i10, int i11) {
        return new C0234g(AccessibilityNodeInfo.CollectionItemInfo.obtain(i8, i9, i10, i11, false, false));
    }

    @Override // p147s6.a
    public Object get() {
        return this.f4552G;
    }
}
