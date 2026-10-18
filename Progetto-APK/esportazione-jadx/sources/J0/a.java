package J0;

import android.graphics.Bitmap;
import p171w0.i;

/* JADX INFO: loaded from: classes.dex */
public final class a extends i {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public Bitmap f4060G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ b f4061H;

    public a(b bVar) {
        this.f4061H = bVar;
    }

    @Override // p171w0.i, p171w0.a
    public final void clear() {
        this.f4060G = null;
        super.clear();
    }

    @Override // p171w0.i
    public final void release() {
        this.f4061H.releaseOutputBuffer(this);
    }
}
