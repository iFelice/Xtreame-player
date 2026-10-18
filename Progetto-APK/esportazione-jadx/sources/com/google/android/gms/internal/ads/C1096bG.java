package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.system.ErrnoException;
import android.system.OsConstants;
import android.text.TextUtils;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.RandomAccessFile;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.bG, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1096bG extends Nz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public RandomAccessFile f18029e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f18030f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f18031g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f18032h;

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws JF {
        Uri uri = cd.f12592a;
        long j8 = cd.f12594c;
        this.f18030f = uri;
        j(cd);
        try {
            String path = uri.getPath();
            path.getClass();
            RandomAccessFile randomAccessFile = new RandomAccessFile(path, "r");
            this.f18029e = randomAccessFile;
            try {
                randomAccessFile.seek(j8);
                long length = cd.f12595d;
                if (length == -1) {
                    length = this.f18029e.length() - j8;
                }
                this.f18031g = length;
                if (length < 0) {
                    throw new JF(null, 2008, null);
                }
                this.f18032h = true;
                k(cd);
                return this.f18031g;
            } catch (IOException e8) {
                throw new JF(2000, e8);
            }
        } catch (FileNotFoundException e9) {
            if (TextUtils.isEmpty(uri.getQuery()) && TextUtils.isEmpty(uri.getFragment())) {
                throw new JF(((e9.getCause() instanceof ErrnoException) && ((ErrnoException) e9.getCause()).errno == OsConstants.EACCES) ? 2006 : 2005, e9);
            }
            String path2 = uri.getPath();
            String query = uri.getQuery();
            String fragment = uri.getFragment();
            StringBuilder sbQ = com.google.protobuf.U2.q("uri has query and/or fragment, which are not supported. Did you call Uri.parse() on a string containing '?' or '#'? Use Uri.fromFile(new File(path)) to avoid this. path=", path2, ",query=", query, ",fragment=");
            sbQ.append(fragment);
            throw new JF(sbQ.toString(), 1004, e9);
        } catch (SecurityException e10) {
            throw new JF(2006, e10);
        } catch (RuntimeException e11) {
            throw new JF(2000, e11);
        }
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws JF {
        if (i9 == 0) {
            return 0;
        }
        long j8 = this.f18031g;
        if (j8 == 0) {
            return -1;
        }
        try {
            RandomAccessFile randomAccessFile = this.f18029e;
            int i10 = Et.f13234a;
            int i11 = randomAccessFile.read(bArr, i8, (int) Math.min(j8, i9));
            if (i11 > 0) {
                this.f18031g -= (long) i11;
                zzg(i11);
            }
            return i11;
        } catch (IOException e8) {
            throw new JF(2000, e8);
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        return this.f18030f;
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        this.f18030f = null;
        try {
            try {
                RandomAccessFile randomAccessFile = this.f18029e;
                if (randomAccessFile != null) {
                    randomAccessFile.close();
                }
                this.f18029e = null;
                if (this.f18032h) {
                    this.f18032h = false;
                    i();
                }
            } catch (IOException e8) {
                throw new JF(2000, e8);
            }
        } catch (Throwable th) {
            this.f18029e = null;
            if (this.f18032h) {
                this.f18032h = false;
                i();
            }
            throw th;
        }
    }
}
