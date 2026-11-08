package p109o;

import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.customtabs.ICustomTabsCallback;
import com.google.android.gms.internal.ads.C1088b8;
import p000a.g;
import p086l.RunnableC3036k;

/* JADX INFO: loaded from: classes.dex */
public final class d extends ICustomTabsCallback.Stub {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Handler f27584G = new Handler(Looper.getMainLooper());

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ C1088b8 f27585H;

    public d(C1088b8 c1088b8) {
        this.f27585H = c1088b8;
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void extraCallback(String str, Bundle bundle) {
        if (this.f27585H == null) {
            return;
        }
        this.f27584G.post(new a(this, str, bundle, 0));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final Bundle extraCallbackWithResult(String str, Bundle bundle) {
        C1088b8 c1088b8 = this.f27585H;
        if (c1088b8 == null) {
            return null;
        }
        return c1088b8.b();
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onActivityResized(int i8, int i9, Bundle bundle) {
        if (this.f27585H == null) {
            return;
        }
        this.f27584G.post(new c(this, i8, i9, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onMessageChannelReady(Bundle bundle) {
        if (this.f27585H == null) {
            return;
        }
        this.f27584G.post(new RunnableC3036k(1, this, bundle));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onNavigationEvent(int i8, Bundle bundle) {
        if (this.f27585H == null) {
            return;
        }
        this.f27584G.post(new g(this, i8, bundle, 2));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onPostMessage(String str, Bundle bundle) {
        if (this.f27585H == null) {
            return;
        }
        this.f27584G.post(new a(this, str, bundle, 1));
    }

    @Override // android.support.customtabs.ICustomTabsCallback
    public final void onRelationshipValidationResult(int i8, Uri uri, boolean z7, Bundle bundle) {
        if (this.f27585H == null) {
            return;
        }
        this.f27584G.post(new b(this, i8, uri, z7, bundle));
    }
}
