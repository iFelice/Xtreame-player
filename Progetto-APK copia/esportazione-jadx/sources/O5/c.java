package O5;

import android.graphics.SurfaceTexture;
import android.view.TextureView;

/* JADX INFO: loaded from: classes2.dex */
public final class c implements TextureView.SurfaceTextureListener {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ g f5572G;

    public c(g gVar) {
        this.f5572G = gVar;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureAvailable(SurfaceTexture surfaceTexture, int i8, int i9) {
        onSurfaceTextureSizeChanged(surfaceTexture, i8, i9);
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final boolean onSurfaceTextureDestroyed(SurfaceTexture surfaceTexture) {
        return false;
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureSizeChanged(SurfaceTexture surfaceTexture, int i8, int i9) {
        t tVar = new t(i8, i9);
        g gVar = this.f5572G;
        gVar.f5593V = tVar;
        gVar.f();
    }

    @Override // android.view.TextureView.SurfaceTextureListener
    public final void onSurfaceTextureUpdated(SurfaceTexture surfaceTexture) {
    }
}
