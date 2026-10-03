package H0;

import android.net.Uri;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.Map;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import p141s0.C3186k;
import p141s0.C3188m;
import p141s0.InterfaceC3184i;
import p141s0.O;

/* JADX INFO: loaded from: classes.dex */
public final class a implements InterfaceC3184i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final InterfaceC3184i f3426a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f3427b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f3428c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CipherInputStream f3429d;

    public a(InterfaceC3184i interfaceC3184i, byte[] bArr, byte[] bArr2) {
        this.f3426a = interfaceC3184i;
        this.f3427b = bArr;
        this.f3428c = bArr2;
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            try {
                cipher.init(2, new SecretKeySpec(this.f3427b, "AES"), new IvParameterSpec(this.f3428c));
                C3186k c3186k = new C3186k(this.f3426a, c3188m);
                this.f3429d = new CipherInputStream(c3186k, cipher);
                c3186k.k();
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e8) {
                throw new RuntimeException(e8);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e9) {
            throw new RuntimeException(e9);
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final void close() {
        if (this.f3429d != null) {
            this.f3429d = null;
            this.f3426a.close();
        }
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f3426a.getUri();
    }

    @Override // p141s0.InterfaceC3184i
    public final Map k() {
        return this.f3426a.k();
    }

    @Override // p141s0.InterfaceC3184i
    public final void p(O o4) {
        o4.getClass();
        this.f3426a.p(o4);
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws IOException {
        this.f3429d.getClass();
        int i10 = this.f3429d.read(bArr, i8, i9);
        if (i10 < 0) {
            return -1;
        }
        return i10;
    }
}
