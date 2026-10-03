package p072j0;

import O1.c0;
import android.view.View;
import androidx.media.AudioAttributesImpl;
import androidx.media.AudioAttributesImplBase;

/* JADX INFO: loaded from: classes.dex */
public final class c implements a {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public int f25660G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public int f25661H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public int f25662I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public int f25663J;

    public c(int i8) {
        if (i8 != 2) {
            if (i8 != 3) {
                this.f25660G = 0;
                this.f25661H = 0;
                this.f25662I = 0;
                this.f25663J = -1;
                return;
            }
            this.f25660G = 0;
            this.f25661H = 0;
            this.f25662I = 0;
            this.f25663J = 32;
        }
    }

    public final boolean a(int i8) {
        if (i8 == 1) {
            if (this.f25660G - this.f25661H <= 1) {
                return false;
            }
        } else if (this.f25662I - this.f25663J <= 1) {
            return false;
        }
        return true;
    }

    public final void b(c0 c0Var) {
        View view = c0Var.f5353G;
        this.f25660G = view.getLeft();
        this.f25661H = view.getTop();
        this.f25662I = view.getRight();
        this.f25663J = view.getBottom();
    }

    @Override // p072j0.a
    public final AudioAttributesImpl build() {
        int i8 = this.f25661H;
        int i9 = this.f25662I;
        int i10 = this.f25660G;
        int i11 = this.f25663J;
        AudioAttributesImplBase audioAttributesImplBase = new AudioAttributesImplBase();
        audioAttributesImplBase.f9393b = i8;
        audioAttributesImplBase.f9394c = i9;
        audioAttributesImplBase.f9392a = i10;
        audioAttributesImplBase.f9395d = i11;
        return audioAttributesImplBase;
    }

    public c(int i8, int i9, int i10, int i11) {
        this.f25660G = i8;
        this.f25661H = i9;
        this.f25662I = i10;
        this.f25663J = i11;
    }
}
