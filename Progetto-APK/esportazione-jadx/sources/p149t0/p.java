package p149t0;

import android.util.SparseArray;
import com.google.android.gms.internal.atv_ads_framework.x0;
import com.google.android.gms.internal.measurement.H1;
import java.io.BufferedInputStream;
import java.io.DataInputStream;
import java.io.DataOutputStream;
import java.io.File;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.SecureRandom;
import java.util.HashMap;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.CipherOutputStream;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p086l.C3061x;
import p117p0.C3163a;
import p117p0.M;
import p148t.a;

/* JADX INFO: loaded from: classes.dex */
public final class p implements q {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f30229a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Cipher f30230b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final SecretKeySpec f30231c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final SecureRandom f30232d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final x0 f30233e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f30234f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public t f30235g;

    public p(File file) {
        this.f30233e = new x0(file);
    }

    public static int i(n nVar, int i8) {
        int iHashCode = nVar.f30220b.hashCode() + (nVar.f30219a * 31);
        if (i8 >= 2) {
            return (iHashCode * 31) + nVar.f30223e.hashCode();
        }
        long jA = a.a(nVar.f30223e);
        return (iHashCode * 31) + ((int) (jA ^ (jA >>> 32)));
    }

    public static n j(int i8, DataInputStream dataInputStream) throws IOException {
        r rVarA;
        int i9 = dataInputStream.readInt();
        String utf = dataInputStream.readUTF();
        if (i8 < 2) {
            long j8 = dataInputStream.readLong();
            x0 x0Var = new x0(3);
            x0Var.h(Long.valueOf(j8), "exo_len");
            rVarA = r.f30236c.a(x0Var);
        } else {
            rVarA = C3061x.a(dataInputStream);
        }
        return new n(i9, utf, rVarA);
    }

    @Override // p149t0.q
    public final void a(HashMap map) throws Throwable {
        Cipher cipher = this.f30230b;
        x0 x0Var = this.f30233e;
        DataOutputStream dataOutputStream = null;
        try {
            C3163a c3163aX = x0Var.x();
            t tVar = this.f30235g;
            if (tVar == null) {
                this.f30235g = new t(c3163aX);
            } else {
                tVar.k(c3163aX);
            }
            t tVar2 = this.f30235g;
            DataOutputStream dataOutputStream2 = new DataOutputStream(tVar2);
            try {
                dataOutputStream2.writeInt(2);
                boolean z7 = this.f30229a;
                dataOutputStream2.writeInt(z7 ? 1 : 0);
                if (z7) {
                    byte[] bArr = new byte[16];
                    SecureRandom secureRandom = this.f30232d;
                    String str = M.f28050a;
                    secureRandom.nextBytes(bArr);
                    dataOutputStream2.write(bArr);
                    try {
                        cipher.init(1, this.f30231c, new IvParameterSpec(bArr));
                        dataOutputStream2.flush();
                        dataOutputStream2 = new DataOutputStream(new CipherOutputStream(tVar2, cipher));
                    } catch (InvalidAlgorithmParameterException e8) {
                        e = e8;
                        throw new IllegalStateException(e);
                    } catch (InvalidKeyException e9) {
                        e = e9;
                        throw new IllegalStateException(e);
                    }
                }
                dataOutputStream2.writeInt(map.size());
                int i8 = 0;
                for (n nVar : map.values()) {
                    dataOutputStream2.writeInt(nVar.f30219a);
                    dataOutputStream2.writeUTF(nVar.f30220b);
                    C3061x.b(nVar.f30223e, dataOutputStream2);
                    i8 += i(nVar, 2);
                }
                dataOutputStream2.writeInt(i8);
                dataOutputStream2.close();
                ((File) x0Var.f22391I).delete();
                String str2 = M.f28050a;
                this.f30234f = false;
            } catch (Throwable th) {
                th = th;
                dataOutputStream = dataOutputStream2;
                M.g(dataOutputStream);
                throw th;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    @Override // p149t0.q
    public final void b(n nVar, boolean z7) {
        this.f30234f = true;
    }

    @Override // p149t0.q
    public final void c(n nVar) {
        this.f30234f = true;
    }

    @Override // p149t0.q
    public final boolean d() {
        return this.f30233e.l();
    }

    @Override // p149t0.q
    public final void e(HashMap map) throws Throwable {
        if (this.f30234f) {
            a(map);
        }
    }

    @Override // p149t0.q
    public final void g(HashMap map, SparseArray sparseArray) throws Throwable {
        H1.i(!this.f30234f);
        x0 x0Var = this.f30233e;
        if (x0Var.l()) {
            DataInputStream dataInputStream = null;
            try {
                BufferedInputStream bufferedInputStream = new BufferedInputStream(x0Var.r());
                DataInputStream dataInputStream2 = new DataInputStream(bufferedInputStream);
                try {
                    int i8 = dataInputStream2.readInt();
                    if (i8 >= 0 && i8 <= 2) {
                        if ((dataInputStream2.readInt() & 1) != 0) {
                            Cipher cipher = this.f30230b;
                            if (cipher != null) {
                                byte[] bArr = new byte[16];
                                dataInputStream2.readFully(bArr);
                                IvParameterSpec ivParameterSpec = new IvParameterSpec(bArr);
                                try {
                                    SecretKeySpec secretKeySpec = this.f30231c;
                                    String str = M.f28050a;
                                    cipher.init(2, secretKeySpec, ivParameterSpec);
                                    dataInputStream2 = new DataInputStream(new CipherInputStream(bufferedInputStream, cipher));
                                } catch (InvalidAlgorithmParameterException e8) {
                                    e = e8;
                                    throw new IllegalStateException(e);
                                } catch (InvalidKeyException e9) {
                                    e = e9;
                                    throw new IllegalStateException(e);
                                }
                            }
                        } else if (this.f30229a) {
                            this.f30234f = true;
                        }
                        int i9 = dataInputStream2.readInt();
                        int i10 = 0;
                        for (int i11 = 0; i11 < i9; i11++) {
                            n nVarJ = j(i8, dataInputStream2);
                            String str2 = nVarJ.f30220b;
                            map.put(str2, nVarJ);
                            sparseArray.put(nVarJ.f30219a, str2);
                            i10 += i(nVarJ, i8);
                        }
                        int i12 = dataInputStream2.readInt();
                        boolean z7 = dataInputStream2.read() == -1;
                        if (i12 == i10 && z7) {
                            M.g(dataInputStream2);
                            return;
                        }
                    }
                    M.g(dataInputStream2);
                } catch (IOException unused) {
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        M.g(dataInputStream);
                    }
                } catch (Throwable th) {
                    th = th;
                    dataInputStream = dataInputStream2;
                    if (dataInputStream != null) {
                        M.g(dataInputStream);
                    }
                    throw th;
                }
            } catch (IOException unused2) {
            } catch (Throwable th2) {
                th = th2;
            }
            map.clear();
            sparseArray.clear();
            ((File) x0Var.f22390H).delete();
            ((File) x0Var.f22391I).delete();
        }
    }

    @Override // p149t0.q
    public final void h() {
        x0 x0Var = this.f30233e;
        ((File) x0Var.f22390H).delete();
        ((File) x0Var.f22391I).delete();
    }

    @Override // p149t0.q
    public final void f(long j8) {
    }
}
