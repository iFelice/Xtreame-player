package C2;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.Closeable;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* JADX INFO: renamed from: C2.k, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C0095k implements com.bumptech.glide.load.data.e {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f1393G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public Closeable f1394H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final Object f1395I;

    /* JADX INFO: renamed from: J, reason: collision with root package name */
    public final Object f1396J;

    public /* synthetic */ C0095k(int i8, Object obj, Object obj2) {
        this.f1393G = i8;
        this.f1395I = obj;
        this.f1396J = obj2;
    }

    @Override // com.bumptech.glide.load.data.e
    public final Class a() {
        int i8 = this.f1393G;
        Object obj = this.f1396J;
        switch (i8) {
            case 0:
                ((C0091g) obj).getClass();
                return InputStream.class;
            default:
                switch (((U1.f) ((s) obj)).f6909G) {
                    case 24:
                        return ParcelFileDescriptor.class;
                    default:
                        return InputStream.class;
                }
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void c() {
        int i8 = this.f1393G;
        Object obj = this.f1396J;
        switch (i8) {
            case 0:
                try {
                    Closeable closeable = this.f1394H;
                    ((C0091g) obj).getClass();
                    ((InputStream) closeable).close();
                } catch (IOException unused) {
                    return;
                }
                break;
            default:
                Closeable closeable2 = this.f1394H;
                if (closeable2 != null) {
                    try {
                        switch (((U1.f) ((s) obj)).f6909G) {
                            case 24:
                                ((ParcelFileDescriptor) closeable2).close();
                                break;
                            default:
                                ((InputStream) closeable2).close();
                                break;
                        }
                    } catch (IOException unused2) {
                        return;
                    }
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final p173w2.a d() {
        return p173w2.a.f30981G;
    }

    @Override // com.bumptech.glide.load.data.e
    public final void e(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d dVar) {
        Closeable closeableOpen;
        int i8 = this.f1393G;
        Object obj = this.f1395I;
        Object obj2 = this.f1396J;
        switch (i8) {
            case 0:
                try {
                    ((C0091g) obj2).getClass();
                    ByteArrayInputStream byteArrayInputStreamR = C0091g.r((String) obj);
                    this.f1394H = byteArrayInputStreamR;
                    dVar.f(byteArrayInputStreamR);
                } catch (IllegalArgumentException e8) {
                    dVar.b(e8);
                }
                break;
            default:
                try {
                    File file = (File) obj;
                    switch (((U1.f) ((s) obj2)).f6909G) {
                        case 24:
                            closeableOpen = ParcelFileDescriptor.open(file, 268435456);
                            break;
                        default:
                            closeableOpen = new FileInputStream(file);
                            break;
                    }
                    this.f1394H = closeableOpen;
                    dVar.f(closeableOpen);
                } catch (FileNotFoundException e9) {
                    if (Log.isLoggable("FileLoader", 3)) {
                        Log.d("FileLoader", "Failed to open file", e9);
                    }
                    dVar.b(e9);
                    return;
                }
                break;
        }
    }

    @Override // com.bumptech.glide.load.data.e
    public final void cancel() {
    }
}
