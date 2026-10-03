package E2;

import F2.n;
import F2.p;
import F2.v;
import android.graphics.ColorSpace;
import android.graphics.ImageDecoder;
import android.os.Build;
import android.util.Log;
import android.util.Size;
import p173w2.k;
import p173w2.l;
import p173w2.m;

/* JADX INFO: loaded from: classes.dex */
public final class c implements ImageDecoder.OnHeaderDecodedListener {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final v f2817a = v.a();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f2818b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f2819c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final p173w2.b f2820d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final n f2821e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final boolean f2822f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final m f2823g;

    public c(int i8, int i9, l lVar) {
        this.f2818b = i8;
        this.f2819c = i9;
        this.f2820d = (p173w2.b) lVar.c(p.f3151f);
        this.f2821e = (n) lVar.c(n.f3149f);
        k kVar = p.f3154i;
        this.f2822f = lVar.c(kVar) != null && ((Boolean) lVar.c(kVar)).booleanValue();
        this.f2823g = (m) lVar.c(p.f3152g);
    }

    @Override // android.graphics.ImageDecoder.OnHeaderDecodedListener
    public final void onHeaderDecoded(ImageDecoder imageDecoder, ImageDecoder.ImageInfo imageInfo, ImageDecoder.Source source) {
        if (this.f2817a.c(this.f2818b, this.f2819c, this.f2822f, false)) {
            imageDecoder.setAllocator(3);
        } else {
            imageDecoder.setAllocator(1);
        }
        if (this.f2820d == p173w2.b.f30988H) {
            imageDecoder.setMemorySizePolicy(0);
        }
        imageDecoder.setOnPartialImageListener(new b());
        Size size = imageInfo.getSize();
        int width = this.f2818b;
        if (width == Integer.MIN_VALUE) {
            width = size.getWidth();
        }
        int height = this.f2819c;
        if (height == Integer.MIN_VALUE) {
            height = size.getHeight();
        }
        float fB = this.f2821e.b(size.getWidth(), size.getHeight(), width, height);
        int iRound = Math.round(size.getWidth() * fB);
        int iRound2 = Math.round(size.getHeight() * fB);
        if (Log.isLoggable("ImageDecoder", 2)) {
            Log.v("ImageDecoder", "Resizing from [" + size.getWidth() + "x" + size.getHeight() + "] to [" + iRound + "x" + iRound2 + "] scaleFactor: " + fB);
        }
        imageDecoder.setTargetSize(iRound, iRound2);
        m mVar = this.f2823g;
        if (mVar != null) {
            int i8 = Build.VERSION.SDK_INT;
            if (i8 >= 28) {
                imageDecoder.setTargetColorSpace(ColorSpace.get((mVar == m.f31001G && imageInfo.getColorSpace() != null && imageInfo.getColorSpace().isWideGamut()) ? ColorSpace.Named.DISPLAY_P3 : ColorSpace.Named.SRGB));
            } else if (i8 >= 26) {
                imageDecoder.setTargetColorSpace(ColorSpace.get(ColorSpace.Named.SRGB));
            }
        }
    }
}
