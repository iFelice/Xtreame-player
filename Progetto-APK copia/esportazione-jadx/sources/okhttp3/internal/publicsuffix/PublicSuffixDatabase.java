package okhttp3.internal.publicsuffix;

import A0.O;
import D6.e;
import H6.b;
import H6.c;
import I6.k;
import Q6.C0332e;
import Q6.G;
import Q6.t;
import Q6.x;
import java.io.IOException;
import java.io.InputStream;
import java.io.InterruptedIOException;
import java.net.IDN;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.logging.Logger;
import okhttp3.HttpUrl;
import okhttp3.internal.Util;
import okhttp3.internal.platform.Platform;
import p027d2.v;
import p113o3.r;
import p162u6.n;
import p162u6.o;
import p162u6.q;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class PublicSuffixDatabase {
    private static final char EXCEPTION_MARKER = '!';
    public static final String PUBLIC_SUFFIX_RESOURCE = "publicsuffixes.gz";
    private byte[] publicSuffixExceptionListBytes;
    private byte[] publicSuffixListBytes;
    public static final Companion Companion = new Companion(null);
    private static final byte[] WILDCARD_LABEL = {42};
    private static final List<String> PREVAILING_RULE = v.o("*");
    private static final PublicSuffixDatabase instance = new PublicSuffixDatabase();
    private final AtomicBoolean listRead = new AtomicBoolean(false);
    private final CountDownLatch readCompleteLatch = new CountDownLatch(1);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public final String binarySearch(byte[] bArr, byte[][] bArr2, int i8) {
            int i9;
            int iAnd;
            boolean z7;
            int iAnd2;
            int length = bArr.length;
            int i10 = 0;
            while (i10 < length) {
                int i11 = (i10 + length) / 2;
                while (i11 > -1 && bArr[i11] != 10) {
                    i11--;
                }
                int i12 = i11 + 1;
                int i13 = 1;
                while (true) {
                    i9 = i12 + i13;
                    if (bArr[i9] == 10) {
                        break;
                    }
                    i13++;
                }
                int i14 = i9 - i12;
                int i15 = i8;
                boolean z8 = false;
                int i16 = 0;
                int i17 = 0;
                while (true) {
                    if (z8) {
                        iAnd = 46;
                        z7 = false;
                    } else {
                        boolean z9 = z8;
                        iAnd = Util.and(bArr2[i15][i16], 255);
                        z7 = z9;
                    }
                    iAnd2 = iAnd - Util.and(bArr[i12 + i17], 255);
                    if (iAnd2 != 0) {
                        break;
                    }
                    i17++;
                    i16++;
                    if (i17 == i14) {
                        break;
                    }
                    if (bArr2[i15].length != i16) {
                        z8 = z7;
                    } else {
                        if (i15 == bArr2.length - 1) {
                            break;
                        }
                        i15++;
                        z8 = true;
                        i16 = -1;
                    }
                }
                if (iAnd2 >= 0) {
                    if (iAnd2 <= 0) {
                        int i18 = i14 - i17;
                        int length2 = bArr2[i15].length - i16;
                        int length3 = bArr2.length;
                        for (int i19 = i15 + 1; i19 < length3; i19++) {
                            length2 += bArr2[i19].length;
                        }
                        if (length2 >= i18) {
                            if (length2 <= i18) {
                                Charset charset = StandardCharsets.UTF_8;
                                q0.g(charset, "UTF_8");
                                return new String(bArr, i12, i14, charset);
                            }
                        }
                    }
                    i10 = i9 + 1;
                }
                length = i11;
            }
            return null;
        }

        public final PublicSuffixDatabase get() {
            return PublicSuffixDatabase.instance;
        }
    }

    private final List<String> findMatchingRule(List<String> list) {
        String str;
        String strBinarySearch;
        String strBinarySearch2;
        if (this.listRead.get() || !this.listRead.compareAndSet(false, true)) {
            try {
                this.readCompleteLatch.await();
            } catch (InterruptedException unused) {
                Thread.currentThread().interrupt();
            }
        } else {
            readTheListUninterruptibly();
        }
        if (this.publicSuffixListBytes == null) {
            throw new IllegalStateException("Unable to load publicsuffixes.gz resource from the classpath.".toString());
        }
        int size = list.size();
        byte[][] bArr = new byte[size][];
        for (int i8 = 0; i8 < size; i8++) {
            String str2 = list.get(i8);
            Charset charset = StandardCharsets.UTF_8;
            q0.g(charset, "UTF_8");
            byte[] bytes = str2.getBytes(charset);
            q0.g(bytes, "this as java.lang.String).getBytes(charset)");
            bArr[i8] = bytes;
        }
        int i9 = 0;
        while (true) {
            str = null;
            if (i9 >= size) {
                strBinarySearch = null;
                break;
            }
            Companion companion = Companion;
            byte[] bArr2 = this.publicSuffixListBytes;
            if (bArr2 == null) {
                q0.I("publicSuffixListBytes");
                throw null;
            }
            strBinarySearch = companion.binarySearch(bArr2, bArr, i9);
            if (strBinarySearch != null) {
                break;
            }
            i9++;
        }
        if (size <= 1) {
            strBinarySearch2 = null;
            break;
        }
        byte[][] bArr3 = (byte[][]) bArr.clone();
        int length = bArr3.length - 1;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                strBinarySearch2 = null;
                break;
            }
            bArr3[i10] = WILDCARD_LABEL;
            Companion companion2 = Companion;
            byte[] bArr4 = this.publicSuffixListBytes;
            if (bArr4 == null) {
                q0.I("publicSuffixListBytes");
                throw null;
            }
            strBinarySearch2 = companion2.binarySearch(bArr4, bArr3, i10);
            if (strBinarySearch2 != null) {
                break;
            }
            i10++;
        }
        if (strBinarySearch2 != null) {
            int i11 = size - 1;
            for (int i12 = 0; i12 < i11; i12++) {
                Companion companion3 = Companion;
                byte[] bArr5 = this.publicSuffixExceptionListBytes;
                if (bArr5 == null) {
                    q0.I("publicSuffixExceptionListBytes");
                    throw null;
                }
                String strBinarySearch3 = companion3.binarySearch(bArr5, bArr, i12);
                if (strBinarySearch3 != null) {
                    str = strBinarySearch3;
                    break;
                }
            }
        }
        if (str != null) {
            return k.S0("!".concat(str), new char[]{'.'});
        }
        if (strBinarySearch == null && strBinarySearch2 == null) {
            return PREVAILING_RULE;
        }
        List<String> listS0 = q.f30542G;
        List<String> listS1 = strBinarySearch != null ? k.S0(strBinarySearch, new char[]{'.'}) : listS0;
        if (strBinarySearch2 != null) {
            listS0 = k.S0(strBinarySearch2, new char[]{'.'});
        }
        return listS1.size() > listS0.size() ? listS1 : listS0;
    }

    private final void readTheList() {
        try {
            InputStream resourceAsStream = PublicSuffixDatabase.class.getResourceAsStream(PUBLIC_SUFFIX_RESOURCE);
            if (resourceAsStream == null) {
                this.readCompleteLatch.countDown();
                return;
            }
            Logger logger = t.f6082a;
            x xVarC = r.c(new Q6.r(new C0332e(resourceAsStream, new G())));
            try {
                long j8 = xVarC.readInt();
                xVarC.U(j8);
                byte[] bArrF0 = xVarC.f6095H.f0(j8);
                long j9 = xVarC.readInt();
                xVarC.U(j9);
                byte[] bArrF1 = xVarC.f6095H.f0(j9);
                q0.k(xVarC, null);
                synchronized (this) {
                    this.publicSuffixListBytes = bArrF0;
                    this.publicSuffixExceptionListBytes = bArrF1;
                }
                this.readCompleteLatch.countDown();
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    q0.k(xVarC, th);
                    throw th2;
                }
            }
        } catch (Throwable th3) {
            this.readCompleteLatch.countDown();
            throw th3;
        }
    }

    private final void readTheListUninterruptibly() {
        boolean z7 = false;
        while (true) {
            try {
                try {
                    readTheList();
                    break;
                } catch (InterruptedIOException unused) {
                    Thread.interrupted();
                    z7 = true;
                } catch (IOException e8) {
                    Platform.Companion.get().log("Failed to read public suffix list", 5, e8);
                    if (z7) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (z7) {
                    Thread.currentThread().interrupt();
                }
                throw th;
            }
        }
        if (z7) {
            Thread.currentThread().interrupt();
        }
    }

    private final List<String> splitDomain(String str) {
        List<String> listS0 = k.S0(str, new char[]{'.'});
        if (listS0.isEmpty()) {
            throw new NoSuchElementException("List is empty.");
        }
        if (!q0.c(listS0.get(v.m(listS0)), HttpUrl.FRAGMENT_ENCODE_SET)) {
            return listS0;
        }
        int size = listS0.size() - 1;
        if (size < 0) {
            size = 0;
        }
        if (size < 0) {
            throw new IllegalArgumentException(O.y("Requested element count ", size, " is less than zero.").toString());
        }
        q qVar = q.f30542G;
        if (size == 0) {
            return qVar;
        }
        if (size >= listS0.size()) {
            return o.C(listS0);
        }
        if (size == 1) {
            if (listS0.isEmpty()) {
                throw new NoSuchElementException("List is empty.");
            }
            return v.o(listS0.get(0));
        }
        ArrayList arrayList = new ArrayList(size);
        Iterator<T> it = listS0.iterator();
        int i8 = 0;
        while (it.hasNext()) {
            arrayList.add(it.next());
            i8++;
            if (i8 == size) {
                break;
            }
        }
        int size2 = arrayList.size();
        if (size2 != 0) {
            return size2 != 1 ? arrayList : v.o(arrayList.get(0));
        }
        return qVar;
    }

    public final String getEffectiveTldPlusOne(String str) {
        int size;
        int size2;
        b bVar;
        q0.h(str, "domain");
        String unicode = IDN.toUnicode(str);
        q0.g(unicode, "unicodeDomain");
        List<String> listSplitDomain = splitDomain(unicode);
        List<String> listFindMatchingRule = findMatchingRule(listSplitDomain);
        int i8 = 0;
        if (listSplitDomain.size() == listFindMatchingRule.size() && listFindMatchingRule.get(0).charAt(0) != '!') {
            return null;
        }
        if (listFindMatchingRule.get(0).charAt(0) == '!') {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size();
        } else {
            size = listSplitDomain.size();
            size2 = listFindMatchingRule.size() + 1;
        }
        int i9 = size - size2;
        List<String> listSplitDomain2 = splitDomain(str);
        q0.h(listSplitDomain2, "<this>");
        c nVar = new n(listSplitDomain2, 0);
        if (i9 < 0) {
            throw new IllegalArgumentException(O.y("Requested element count ", i9, " is less than zero.").toString());
        }
        if (i9 != 0) {
            if (nVar instanceof b) {
                b bVar2 = (b) nVar;
                int i10 = bVar2.f3783b + i9;
                if (i10 < 0) {
                    bVar = new b(bVar2, i9);
                } else {
                    nVar = new b(bVar2.f3782a, i10);
                }
            } else {
                bVar = new b(nVar, i9);
            }
            nVar = bVar;
        }
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) HttpUrl.FRAGMENT_ENCODE_SET);
        for (Object obj : nVar) {
            i8++;
            if (i8 > 1) {
                sb.append((CharSequence) ".");
            }
            p190y4.k.e(sb, obj, null);
        }
        sb.append((CharSequence) HttpUrl.FRAGMENT_ENCODE_SET);
        return sb.toString();
    }

    public final void setListBytes(byte[] bArr, byte[] bArr2) {
        q0.h(bArr, "publicSuffixListBytes");
        q0.h(bArr2, "publicSuffixExceptionListBytes");
        this.publicSuffixListBytes = bArr;
        this.publicSuffixExceptionListBytes = bArr2;
        this.listRead.set(true);
        this.readCompleteLatch.countDown();
    }
}
