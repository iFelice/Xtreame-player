package C2;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: renamed from: C2.n, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0098n implements com.bumptech.glide.load.data.e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final Resources.Theme f1401G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final Resources f1402H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final InterfaceC0099o f1403I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final int f1404J;

    /* JADX INFO: renamed from: K, reason: collision with root package name */
    public Object f1405K;

    public C0098n(Resources.Theme theme, Resources resources, InterfaceC0099o interfaceC0099o, int i8) {
        this.f1401G = theme;
        this.f1402H = resources;
        this.f1403I = interfaceC0099o;
        this.f1404J = i8;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        switch (((C0097m) this.f1403I).f1399a) {
            case 0:
                return AssetFileDescriptor.class;
            case 1:
                return Drawable.class;
            default:
                return InputStream.class;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
        Object obj = this.f1405K;
        if (obj != null) {
            try {
                switch (((C0097m) this.f1403I).f1399a) {
                    case 0:
                        ((AssetFileDescriptor) obj).close();
                        break;
                    case 1:
                        break;
                    default:
                        ((InputStream) obj).close();
                        break;
                }
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30981G;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        Object objOpenRawResourceFd;
        try {
            InterfaceC0099o interfaceC0099o = this.f1403I;
            Resources.Theme theme = this.f1401G;
            Resources resources = this.f1402H;
            int i8 = this.f1404J;
            C0097m c0097m = (C0097m) interfaceC0099o;
            switch (c0097m.f1399a) {
                case 0:
                    objOpenRawResourceFd = resources.openRawResourceFd(i8);
                    break;
                case 1:
                    Context context = c0097m.f1400b;
                    objOpenRawResourceFd = com.bumptech.glide.d.j(context, context, i8, theme);
                    break;
                default:
                    objOpenRawResourceFd = resources.openRawResource(i8);
                    break;
            }
            this.f1405K = objOpenRawResourceFd;
            dVar.f(objOpenRawResourceFd);
        } catch (Resources.NotFoundException e8) {
            dVar.b(e8);
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
