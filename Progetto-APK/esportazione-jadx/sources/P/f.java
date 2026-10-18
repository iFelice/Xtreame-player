package P;

import android.content.ClipDescription;
import android.net.Uri;
import android.view.inputmethod.InputContentInfo;

/* JADX INFO: loaded from: classes.dex */
public final class f implements g {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final InputContentInfo f5694G;

    public f(Object obj) {
        this.f5694G = (InputContentInfo) obj;
    }

    @Override // P.g
    public final Uri c() {
        return this.f5694G.getContentUri();
    }

    @Override // P.g
    public final void f() {
        this.f5694G.requestPermission();
    }

    @Override // P.g
    public final Uri g() {
        return this.f5694G.getLinkUri();
    }

    @Override // P.g
    public final ClipDescription getDescription() {
        return this.f5694G.getDescription();
    }

    @Override // P.g
    public final Object i() {
        return this.f5694G;
    }

    public f(Uri uri, ClipDescription clipDescription, Uri uri2) {
        this.f5694G = new InputContentInfo(uri, clipDescription, uri2);
    }
}
