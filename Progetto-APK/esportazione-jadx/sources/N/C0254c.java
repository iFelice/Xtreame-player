package N;

import android.content.ClipData;
import android.net.Uri;
import android.os.Bundle;
import android.view.ContentInfo;

/* JADX INFO: renamed from: N.c, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0254c implements InterfaceC0255d {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final ContentInfo.Builder f4887G;

    public C0254c(ClipData clipData, int i8) {
        this.f4887G = C0.E.l(clipData, i8);
    }

    @Override // N.InterfaceC0255d
    public final void b(Uri uri) {
        this.f4887G.setLinkUri(uri);
    }

    @Override // N.InterfaceC0255d
    public final C0259h build() {
        return new C0259h(new p039f.S(this.f4887G.build()));
    }

    @Override // N.InterfaceC0255d
    public final void setExtras(Bundle bundle) {
        this.f4887G.setExtras(bundle);
    }

    @Override // N.InterfaceC0255d
    public final void setFlags(int i8) {
        this.f4887G.setFlags(i8);
    }
}
