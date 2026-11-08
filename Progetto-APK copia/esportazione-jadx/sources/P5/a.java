package P5;

import android.hardware.Camera;

/* JADX INFO: loaded from: classes2.dex */
public final class a implements Camera.AutoFocusCallback {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ b f5917a;

    public a(b bVar) {
        this.f5917a = bVar;
    }

    @Override // android.hardware.Camera.AutoFocusCallback
    public final void onAutoFocus(boolean z7, Camera camera) {
        this.f5917a.f5923e.post(new p045f5.a(this, 2));
    }
}
