package p141s0;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import com.google.protobuf.U2;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class v extends AbstractC3178c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RandomAccessFile f30010e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f30011f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f30012g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f30013h;

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws u {
        Uri uri = c3188m.f29963a;
        long j8 = c3188m.f29968f;
        this.f30011f = uri;
        u();
        try {
            String path = uri.getPath();
            path.getClass();
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.f30010e = randomAccessFile;
            try {
                randomAccessFile.seek(j8);
                long length = c3188m.f29969g;
                if (length == -1) {
                    length = this.f30010e.length() - j8;
                }
                this.f30012g = length;
                if (length < 0) {
                    throw new u(null, 2008, null);
                }
                this.f30013h = true;
                v(c3188m);
                return this.f30012g;
            } catch (IOException e8) {
                throw new u(2000, e8);
            }
        } catch (FileNotFoundException e9) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new u(((e9.getCause() instanceof ErrnoException) && ((ErrnoException) e9.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005, e9);
            }
            String path2 = uri.getPath();
            String query = uri.getQuery();
            String fragment = uri.getFragment();
            StringBuilder sbQ = U2.q("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=", path2, ",query=", query, ",fragment=");
            sbQ.append(fragment);
            throw new u(sbQ.toString(), 1004, e9);
        } catch (SecurityException e10) {
            throw new u(2006, e10);
        } catch (RuntimeException e11) {
            throw new u(2000, e11);
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        this.f30011f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f30010e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f30010e = null;
                if (this.f30013h) {
                    this.f30013h = false;
                    t();
                }
            } catch (IOException e8) {
                throw new u(2000, e8);
            }
        } catch (Throwable th) {
            this.f30010e = null;
            if (this.f30013h) {
                this.f30013h = false;
                t();
            }
            throw th;
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f30011f;
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws u {
        if (i9 == 0) {
            return 0;
        }
        long j8 = this.f30012g;
        if (j8 == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f30010e;
            String str = M.f28050a;
            int i10 = randomAccessFile.read(bArr, i8, (int) Math.min(j8, i9));
            if (i10 > 0) {
                this.f30012g -= (long) i10;
                s(i10);
            }
            return i10;
        } catch (IOException e8) {
            throw new u(2000, e8);
        }
    }
}
