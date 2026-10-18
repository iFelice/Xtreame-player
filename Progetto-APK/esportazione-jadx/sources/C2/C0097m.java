package C2;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import java.io.InputStream;

/* JADX INFO: renamed from: C2.m, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0097m implements D, InterfaceC0099o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f1399a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f1400b;

    public /* synthetic */ C0097m(Context context, int i8) {
        this.f1399a = i8;
        this.f1400b = context;
    }

    @Override // C2.D
    public final C a(H h8) {
        int i8 = this.f1399a;
        Context context = this.f1400b;
        switch (i8) {
            case 0:
                return new C0100p(context, this);
            case 1:
                return new C0100p(context, this);
            case 2:
                return new C0100p(context, this);
            case 3:
                return new z(context, 0);
            case 4:
                return new C0100p(context, h8.c(Integer.class, AssetFileDescriptor.class));
            case 5:
                return new C0100p(context, h8.c(Integer.class, InputStream.class));
            case 6:
                return new z(context, 1);
            default:
                return new z(context, 2);
        }
    }
}
