package U0;

import android.hardware.display.DisplayManager;

/* JADX INFO: loaded from: classes.dex */
public final class G implements DisplayManager.DisplayListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final DisplayManager f6647a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final /* synthetic */ I f6648b;

    public G(I i8, DisplayManager displayManager) {
        this.f6648b = i8;
        this.f6647a = displayManager;
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayChanged(int i8) {
        if (i8 == 0) {
            I.a(this.f6648b, this.f6647a.getDisplay(0));
        }
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayAdded(int i8) {
    }

    @Override // android.hardware.display.DisplayManager.DisplayListener
    public final void onDisplayRemoved(int i8) {
    }
}
