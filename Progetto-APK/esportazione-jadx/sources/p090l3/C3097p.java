package p090l3;

import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Random;
import java.util.UUID;
import p120p3.a;
import p120p3.d;

/* JADX INFO: renamed from: l3.p, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3097p {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final C3097p f26618f = new C3097p();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d f26619a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final C3093n f26620b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f26621c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final a f26622d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Random f26623e;

    public C3097p() {
        d dVar = new d();
        dVar.f28209a = -1.0f;
        a1 a1Var = new a1("com.google.android.gms.ads.AdManagerCreatorImpl");
        M0 m7 = new M0(1);
        M0 m8 = new M0(0);
        M0 m9 = new M0(3);
        M0 m10 = new M0(5);
        M0 m11 = new M0(4);
        M0 m12 = new M0(2);
        C3093n c3093n = new C3093n();
        c3093n.f26609a = a1Var;
        c3093n.f26610b = m7;
        c3093n.f26611c = m8;
        c3093n.f26612d = m9;
        c3093n.f26613e = m10;
        c3093n.f26614f = m11;
        c3093n.f26616h = m12;
        UUID uuidRandomUUID = UUID.randomUUID();
        byte[] byteArray = BigInteger.valueOf(uuidRandomUUID.getLeastSignificantBits()).toByteArray();
        byte[] byteArray2 = BigInteger.valueOf(uuidRandomUUID.getMostSignificantBits()).toByteArray();
        String string = new BigInteger(1, byteArray).toString();
        for (int i8 = 0; i8 < 2; i8++) {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(byteArray);
                messageDigest.update(byteArray2);
                byte[] bArr = new byte[8];
                System.arraycopy(messageDigest.digest(), 0, bArr, 0, 8);
                string = new BigInteger(1, bArr).toString();
            } catch (NoSuchAlgorithmException unused) {
            }
        }
        a aVar = new a(true, 0, 243220000);
        Random random = new Random();
        this.f26619a = dVar;
        this.f26620b = c3093n;
        this.f26621c = string;
        this.f26622d = aVar;
        this.f26623e = random;
    }
}
