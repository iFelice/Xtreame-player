package okhttp3.internal;

import C6.a;
import C6.l;
import F2.G;
import F6.b;
import F6.c;
import I6.e;
import I6.k;
import N.P;
import Q6.B;
import Q6.D;
import Q6.j;
import Q6.m;
import Q6.u;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.common.api.d;
import java.io.Closeable;
import java.io.EOFException;
import java.io.File;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.lang.reflect.Field;
import java.net.InetSocketAddress;
import java.net.ServerSocket;
import java.net.Socket;
import java.net.SocketAddress;
import java.net.SocketTimeoutException;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.TimeZone;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.MediaType;
import okhttp3.OkHttpClient;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Header;
import okhttp3.internal.io.FileSystem;
import p004a3.i;
import p027d2.v;
import p162u6.q;
import p162u6.r;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public final class Util {
    public static final byte[] EMPTY_BYTE_ARRAY;
    public static final Headers EMPTY_HEADERS = Headers.Companion.of(new String[0]);
    public static final RequestBody EMPTY_REQUEST;
    public static final ResponseBody EMPTY_RESPONSE;
    private static final u UNICODE_BOMS;
    public static final TimeZone UTC;
    private static final e VERIFY_AS_IP_ADDRESS;
    public static final boolean assertionsEnabled;
    public static final String okHttpName;
    public static final String userAgent = "okhttp/4.12.0";

    static {
        byte[] bArr = new byte[0];
        EMPTY_BYTE_ARRAY = bArr;
        EMPTY_RESPONSE = ResponseBody.Companion.create$default(ResponseBody.Companion, bArr, (MediaType) null, 1, (Object) null);
        EMPTY_REQUEST = RequestBody.Companion.create$default(RequestBody.Companion, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        m mVar = m.f6065J;
        UNICODE_BOMS = G.H(G.z("efbbbf"), G.z("feff"), G.z("fffe"), G.z("0000ffff"), G.z("ffff0000"));
        TimeZone timeZone = TimeZone.getTimeZone("GMT");
        q0.e(timeZone);
        UTC = timeZone;
        VERIFY_AS_IP_ADDRESS = new e("([0-9a-fA-F]*:[0-9a-fA-F:.]*)|([\\d.]+)");
        assertionsEnabled = false;
        String strP0 = k.P0(OkHttpClient.class.getName(), "okhttp3.");
        if (k.E0(strP0, "Client")) {
            strP0 = strP0.substring(0, strP0.length() - "Client".length());
            q0.g(strP0, "substring(...)");
        }
        okHttpName = strP0;
    }

    public static final <E> void addIfAbsent(List<E> list, E e8) {
        q0.h(list, "<this>");
        if (list.contains(e8)) {
            return;
        }
        list.add(e8);
    }

    public static final int and(byte b8, int i8) {
        return b8 & i8;
    }

    public static final EventListener.Factory asFactory(EventListener eventListener) {
        q0.h(eventListener, "<this>");
        return new i(eventListener, 15);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final EventListener asFactory$lambda$8(EventListener eventListener, Call call) {
        q0.h(eventListener, "$this_asFactory");
        q0.h(call, "it");
        return eventListener;
    }

    public static final void assertThreadDoesntHoldLock(Object obj) {
        q0.h(obj, "<this>");
        if (assertionsEnabled && Thread.holdsLock(obj)) {
            throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST NOT hold lock on " + obj);
        }
    }

    public static final void assertThreadHoldsLock(Object obj) {
        q0.h(obj, "<this>");
        if (!assertionsEnabled || Thread.holdsLock(obj)) {
            return;
        }
        throw new AssertionError("Thread " + Thread.currentThread().getName() + " MUST hold lock on " + obj);
    }

    public static final boolean canParseAsIpAddress(String str) {
        q0.h(str, "<this>");
        e eVar = VERIFY_AS_IP_ADDRESS;
        eVar.getClass();
        return eVar.f4039G.matcher(str).matches();
    }

    public static final boolean canReuseConnectionFor(HttpUrl httpUrl, HttpUrl httpUrl2) {
        q0.h(httpUrl, "<this>");
        q0.h(httpUrl2, "other");
        return q0.c(httpUrl.host(), httpUrl2.host()) && httpUrl.port() == httpUrl2.port() && q0.c(httpUrl.scheme(), httpUrl2.scheme());
    }

    public static final int checkDuration(String str, long j8, TimeUnit timeUnit) {
        q0.h(str, "name");
        if (j8 < 0) {
            throw new IllegalStateException(str.concat(" < 0").toString());
        }
        if (timeUnit == null) {
            throw new IllegalStateException("unit == null".toString());
        }
        long millis = timeUnit.toMillis(j8);
        if (millis > 2147483647L) {
            throw new IllegalArgumentException(str.concat(" too large.").toString());
        }
        if (millis != 0 || j8 <= 0) {
            return (int) millis;
        }
        throw new IllegalArgumentException(str.concat(" too small.").toString());
    }

    public static final void checkOffsetAndCount(long j8, long j9, long j10) {
        if ((j9 | j10) < 0 || j9 > j8 || j8 - j9 < j10) {
            throw new ArrayIndexOutOfBoundsException();
        }
    }

    public static final void closeQuietly(Closeable closeable) {
        q0.h(closeable, "<this>");
        try {
            closeable.close();
        } catch (RuntimeException e8) {
            throw e8;
        } catch (Exception unused) {
        }
    }

    public static final String[] concat(String[] strArr, String str) {
        q0.h(strArr, "<this>");
        q0.h(str, "value");
        Object[] objArrCopyOf = Arrays.copyOf(strArr, strArr.length + 1);
        q0.g(objArrCopyOf, "copyOf(this, newSize)");
        String[] strArr2 = (String[]) objArrCopyOf;
        strArr2[strArr2.length - 1] = str;
        return strArr2;
    }

    public static final int delimiterOffset(String str, String str2, int i8, int i9) {
        q0.h(str, "<this>");
        q0.h(str2, "delimiters");
        while (i8 < i9) {
            if (k.C0(str2, str.charAt(i8))) {
                return i8;
            }
            i8++;
        }
        return i9;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, String str2, int i8, int i9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            i8 = 0;
        }
        if ((i10 & 4) != 0) {
            i9 = str.length();
        }
        return delimiterOffset(str, str2, i8, i9);
    }

    public static final boolean discard(D d6, int i8, TimeUnit timeUnit) {
        q0.h(d6, "<this>");
        q0.h(timeUnit, "timeUnit");
        try {
            return skipAll(d6, i8, timeUnit);
        } catch (IOException unused) {
            return false;
        }
    }

    public static final <T> List<T> filterList(Iterable<? extends T> iterable, l lVar) {
        q0.h(iterable, "<this>");
        q0.h(lVar, "predicate");
        ArrayList arrayList = q.f30542G;
        for (T t7 : iterable) {
            if (((Boolean) lVar.invoke(t7)).booleanValue()) {
                if (arrayList.isEmpty()) {
                    arrayList = new ArrayList();
                }
                p190y4.k.g(arrayList).add(t7);
            }
        }
        return arrayList;
    }

    public static final String format(String str, Object... objArr) {
        q0.h(str, "format");
        q0.h(objArr, "args");
        Locale locale = Locale.US;
        Object[] objArrCopyOf = Arrays.copyOf(objArr, objArr.length);
        return String.format(locale, str, Arrays.copyOf(objArrCopyOf, objArrCopyOf.length));
    }

    public static final boolean hasIntersection(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        q0.h(strArr, "<this>");
        q0.h(comparator, "comparator");
        if (strArr.length != 0 && strArr2 != null && strArr2.length != 0) {
            for (String str : strArr) {
                P p7 = new P(strArr2);
                while (p7.hasNext()) {
                    if (comparator.compare(str, (String) p7.next()) == 0) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public static final long headersContentLength(Response response) {
        q0.h(response, "<this>");
        String str = response.headers().get("Content-Length");
        if (str != null) {
            return toLongOrDefault(str, -1L);
        }
        return -1L;
    }

    public static final void ignoreIoExceptions(a aVar) {
        q0.h(aVar, "block");
        try {
            aVar.invoke();
        } catch (IOException unused) {
        }
    }

    @SafeVarargs
    public static final <T> List<T> immutableListOf(T... tArr) {
        q0.h(tArr, "elements");
        Object[] objArr = (Object[]) tArr.clone();
        List<T> listUnmodifiableList = Collections.unmodifiableList(v.p(Arrays.copyOf(objArr, objArr.length)));
        q0.g(listUnmodifiableList, "unmodifiableList(listOf(*elements.clone()))");
        return listUnmodifiableList;
    }

    public static final int indexOf(String[] strArr, String str, Comparator<String> comparator) {
        q0.h(strArr, "<this>");
        q0.h(str, "value");
        q0.h(comparator, "comparator");
        int length = strArr.length;
        for (int i8 = 0; i8 < length; i8++) {
            if (comparator.compare(strArr[i8], str) == 0) {
                return i8;
            }
        }
        return -1;
    }

    public static final int indexOfControlOrNonAscii(String str) {
        q0.h(str, "<this>");
        int length = str.length();
        for (int i8 = 0; i8 < length; i8++) {
            char cCharAt = str.charAt(i8);
            if (q0.l(cCharAt, 31) <= 0 || q0.l(cCharAt, 127) >= 0) {
                return i8;
            }
        }
        return -1;
    }

    public static final int indexOfFirstNonAsciiWhitespace(String str, int i8, int i9) {
        q0.h(str, "<this>");
        while (i8 < i9) {
            char cCharAt = str.charAt(i8);
            if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                return i8;
            }
            i8++;
        }
        return i9;
    }

    public static /* synthetic */ int indexOfFirstNonAsciiWhitespace$default(String str, int i8, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i8 = 0;
        }
        if ((i10 & 2) != 0) {
            i9 = str.length();
        }
        return indexOfFirstNonAsciiWhitespace(str, i8, i9);
    }

    public static final int indexOfLastNonAsciiWhitespace(String str, int i8, int i9) {
        q0.h(str, "<this>");
        int i10 = i9 - 1;
        if (i8 <= i10) {
            while (true) {
                char cCharAt = str.charAt(i10);
                if (cCharAt != '\t' && cCharAt != '\n' && cCharAt != '\f' && cCharAt != '\r' && cCharAt != ' ') {
                    return i10 + 1;
                }
                if (i10 != i8) {
                    i10--;
                }
            }
        }
        return i8;
    }

    public static /* synthetic */ int indexOfLastNonAsciiWhitespace$default(String str, int i8, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i8 = 0;
        }
        if ((i10 & 2) != 0) {
            i9 = str.length();
        }
        return indexOfLastNonAsciiWhitespace(str, i8, i9);
    }

    public static final int indexOfNonWhitespace(String str, int i8) {
        q0.h(str, "<this>");
        int length = str.length();
        while (i8 < length) {
            char cCharAt = str.charAt(i8);
            if (cCharAt != ' ' && cCharAt != '\t') {
                return i8;
            }
            i8++;
        }
        return str.length();
    }

    public static /* synthetic */ int indexOfNonWhitespace$default(String str, int i8, int i9, Object obj) {
        if ((i9 & 1) != 0) {
            i8 = 0;
        }
        return indexOfNonWhitespace(str, i8);
    }

    public static final String[] intersect(String[] strArr, String[] strArr2, Comparator<? super String> comparator) {
        q0.h(strArr, "<this>");
        q0.h(strArr2, "other");
        q0.h(comparator, "comparator");
        ArrayList arrayList = new ArrayList();
        for (String str : strArr) {
            for (String str2 : strArr2) {
                if (comparator.compare(str, str2) == 0) {
                    arrayList.add(str);
                    break;
                }
            }
        }
        return (String[]) arrayList.toArray(new String[0]);
    }

    public static final boolean isCivilized(FileSystem fileSystem, File file) throws IOException {
        q0.h(fileSystem, "<this>");
        q0.h(file, "file");
        B bSink = fileSystem.sink(file);
        try {
            fileSystem.delete(file);
            q0.k(bSink, null);
            return true;
        } catch (IOException unused) {
            q0.k(bSink, null);
            fileSystem.delete(file);
            return false;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                q0.k(bSink, th);
                throw th2;
            }
        }
    }

    public static final boolean isHealthy(Socket socket, Q6.l lVar) {
        q0.h(socket, "<this>");
        q0.h(lVar, "source");
        try {
            int soTimeout = socket.getSoTimeout();
            try {
                socket.setSoTimeout(1);
                return !lVar.q();
            } finally {
                socket.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public static final boolean isSensitiveHeader(String str) {
        q0.h(str, "name");
        return k.F0(str, "Authorization") || k.F0(str, "Cookie") || k.F0(str, "Proxy-Authorization") || k.F0(str, "Set-Cookie");
    }

    public static final void notify(Object obj) {
        q0.h(obj, "<this>");
        obj.notify();
    }

    public static final void notifyAll(Object obj) {
        q0.h(obj, "<this>");
        obj.notifyAll();
    }

    public static final int parseHexDigit(char c8) {
        if ('0' <= c8 && c8 < ':') {
            return c8 - '0';
        }
        if ('a' <= c8 && c8 < 'g') {
            return c8 - 'W';
        }
        if ('A' > c8 || c8 >= 'G') {
            return -1;
        }
        return c8 - '7';
    }

    public static final String peerName(Socket socket) {
        q0.h(socket, "<this>");
        SocketAddress remoteSocketAddress = socket.getRemoteSocketAddress();
        if (!(remoteSocketAddress instanceof InetSocketAddress)) {
            return remoteSocketAddress.toString();
        }
        String hostName = ((InetSocketAddress) remoteSocketAddress).getHostName();
        q0.g(hostName, "address.hostName");
        return hostName;
    }

    public static final Charset readBomAsCharset(Q6.l lVar, Charset charset) {
        Charset charsetForName;
        q0.h(lVar, "<this>");
        q0.h(charset, "default");
        int iY = lVar.Y(UNICODE_BOMS);
        if (iY == -1) {
            return charset;
        }
        if (iY == 0) {
            Charset charset2 = StandardCharsets.UTF_8;
            q0.g(charset2, "UTF_8");
            return charset2;
        }
        if (iY == 1) {
            Charset charset3 = StandardCharsets.UTF_16BE;
            q0.g(charset3, "UTF_16BE");
            return charset3;
        }
        if (iY == 2) {
            Charset charset4 = StandardCharsets.UTF_16LE;
            q0.g(charset4, "UTF_16LE");
            return charset4;
        }
        if (iY == 3) {
            Charset charset5 = I6.a.f4021a;
            charsetForName = I6.a.f4023c;
            if (charsetForName == null) {
                charsetForName = Charset.forName("UTF-32BE");
                q0.g(charsetForName, "forName(...)");
                I6.a.f4023c = charsetForName;
            }
        } else {
            if (iY != 4) {
                throw new AssertionError();
            }
            Charset charset6 = I6.a.f4021a;
            charsetForName = I6.a.f4022b;
            if (charsetForName == null) {
                charsetForName = Charset.forName("UTF-32LE");
                q0.g(charsetForName, "forName(...)");
                I6.a.f4022b = charsetForName;
            }
        }
        return charsetForName;
    }

    public static final <T> T readFieldOrNull(Object obj, Class<T> cls, String str) throws IllegalAccessException {
        Object fieldOrNull;
        q0.h(obj, "instance");
        q0.h(cls, "fieldType");
        q0.h(str, "fieldName");
        Class<?> superclass = obj.getClass();
        while (true) {
            T tCast = null;
            if (q0.c(superclass, Object.class)) {
                if (q0.c(str, "delegate") || (fieldOrNull = readFieldOrNull(obj, Object.class, "delegate")) == null) {
                    return null;
                }
                return (T) readFieldOrNull(fieldOrNull, cls, str);
            }
            try {
                Field declaredField = superclass.getDeclaredField(str);
                declaredField.setAccessible(true);
                Object obj2 = declaredField.get(obj);
                if (cls.isInstance(obj2)) {
                    tCast = cls.cast(obj2);
                }
                return tCast;
            } catch (NoSuchFieldException unused) {
                superclass = superclass.getSuperclass();
                q0.g(superclass, "c.superclass");
            }
        }
    }

    public static final int readMedium(Q6.l lVar) {
        q0.h(lVar, "<this>");
        return and(lVar.readByte(), 255) | (and(lVar.readByte(), 255) << 16) | (and(lVar.readByte(), 255) << 8);
    }

    public static final int skipAll(j jVar, byte b8) throws EOFException {
        q0.h(jVar, "<this>");
        int i8 = 0;
        while (!jVar.q() && jVar.a0(0L) == b8) {
            i8++;
            jVar.readByte();
        }
        return i8;
    }

    public static final ThreadFactory threadFactory(final String str, final boolean z7) {
        q0.h(str, "name");
        return new ThreadFactory() { // from class: P6.a
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                return Util.threadFactory$lambda$1(str, z7, runnable);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final Thread threadFactory$lambda$1(String str, boolean z7, Runnable runnable) {
        q0.h(str, "$name");
        Thread thread = new Thread(runnable, str);
        thread.setDaemon(z7);
        return thread;
    }

    public static final void threadName(String str, a aVar) {
        q0.h(str, "name");
        q0.h(aVar, "block");
        Thread threadCurrentThread = Thread.currentThread();
        String name = threadCurrentThread.getName();
        threadCurrentThread.setName(str);
        try {
            aVar.invoke();
        } finally {
            threadCurrentThread.setName(name);
        }
    }

    public static final List<Header> toHeaderList(Headers headers) {
        q0.h(headers, "<this>");
        c cVarS = S3.e.s(0, headers.size());
        ArrayList arrayList = new ArrayList(p162u6.k.v(cVarS));
        Iterator it = cVarS.iterator();
        while (((b) it).f3270I) {
            b bVar = (b) it;
            int i8 = bVar.f3271J;
            if (i8 != bVar.f3269H) {
                bVar.f3271J = bVar.f3268G + i8;
            } else {
                if (!bVar.f3270I) {
                    throw new NoSuchElementException();
                }
                bVar.f3270I = false;
            }
            arrayList.add(new Header(headers.name(i8), headers.value(i8)));
        }
        return arrayList;
    }

    public static final Headers toHeaders(List<Header> list) {
        q0.h(list, "<this>");
        Headers.Builder builder = new Headers.Builder();
        for (Header header : list) {
            builder.addLenient$okhttp(header.component1().k(), header.component2().k());
        }
        return builder.build();
    }

    public static final String toHexString(long j8) {
        String hexString = Long.toHexString(j8);
        q0.g(hexString, "toHexString(this)");
        return hexString;
    }

    public static final String toHostHeader(HttpUrl httpUrl, boolean z7) {
        String strHost;
        q0.h(httpUrl, "<this>");
        if (k.D0(httpUrl.host(), ":")) {
            strHost = "[" + httpUrl.host() + ']';
        } else {
            strHost = httpUrl.host();
        }
        if (!z7 && httpUrl.port() == HttpUrl.Companion.defaultPort(httpUrl.scheme())) {
            return strHost;
        }
        return strHost + ':' + httpUrl.port();
    }

    public static /* synthetic */ String toHostHeader$default(HttpUrl httpUrl, boolean z7, int i8, Object obj) {
        if ((i8 & 1) != 0) {
            z7 = false;
        }
        return toHostHeader(httpUrl, z7);
    }

    public static final <T> List<T> toImmutableList(List<? extends T> list) {
        q0.h(list, "<this>");
        List<T> listUnmodifiableList = Collections.unmodifiableList(new ArrayList(list));
        q0.g(listUnmodifiableList, "unmodifiableList(toMutableList())");
        return listUnmodifiableList;
    }

    public static final <K, V> Map<K, V> toImmutableMap(Map<K, ? extends V> map) {
        q0.h(map, "<this>");
        if (map.isEmpty()) {
            return r.f30543G;
        }
        Map<K, V> mapUnmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(map));
        q0.g(mapUnmodifiableMap, "{\n    Collections.unmodi…(LinkedHashMap(this))\n  }");
        return mapUnmodifiableMap;
    }

    public static final long toLongOrDefault(String str, long j8) {
        q0.h(str, "<this>");
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j8;
        }
    }

    public static final int toNonNegativeInt(String str, int i8) {
        if (str != null) {
            try {
                long j8 = Long.parseLong(str);
                if (j8 > 2147483647L) {
                    return d.API_PRIORITY_OTHER;
                }
                if (j8 < 0) {
                    return 0;
                }
                return (int) j8;
            } catch (NumberFormatException unused) {
            }
        }
        return i8;
    }

    public static final String trimSubstring(String str, int i8, int i9) {
        q0.h(str, "<this>");
        int iIndexOfFirstNonAsciiWhitespace = indexOfFirstNonAsciiWhitespace(str, i8, i9);
        String strSubstring = str.substring(iIndexOfFirstNonAsciiWhitespace, indexOfLastNonAsciiWhitespace(str, iIndexOfFirstNonAsciiWhitespace, i9));
        q0.g(strSubstring, "this as java.lang.String…ing(startIndex, endIndex)");
        return strSubstring;
    }

    public static /* synthetic */ String trimSubstring$default(String str, int i8, int i9, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            i8 = 0;
        }
        if ((i10 & 2) != 0) {
            i9 = str.length();
        }
        return trimSubstring(str, i8, i9);
    }

    public static final void wait(Object obj) throws InterruptedException {
        q0.h(obj, "<this>");
        obj.wait();
    }

    public static final Throwable withSuppressed(Exception exc, List<? extends Exception> list) {
        q0.h(exc, "<this>");
        q0.h(list, "suppressed");
        Iterator<? extends Exception> it = list.iterator();
        while (it.hasNext()) {
            com.bumptech.glide.d.a(exc, it.next());
        }
        return exc;
    }

    public static final void writeMedium(Q6.k kVar, int i8) {
        q0.h(kVar, "<this>");
        kVar.r((i8 >>> 16) & 255);
        kVar.r((i8 >>> 8) & 255);
        kVar.r(i8 & 255);
    }

    public static final int and(short s7, int i8) {
        return s7 & i8;
    }

    public static final int delimiterOffset(String str, char c8, int i8, int i9) {
        q0.h(str, "<this>");
        while (i8 < i9) {
            if (str.charAt(i8) == c8) {
                return i8;
            }
            i8++;
        }
        return i9;
    }

    public static /* synthetic */ int delimiterOffset$default(String str, char c8, int i8, int i9, int i10, Object obj) {
        if ((i10 & 2) != 0) {
            i8 = 0;
        }
        if ((i10 & 4) != 0) {
            i9 = str.length();
        }
        return delimiterOffset(str, c8, i8, i9);
    }

    public static final String toHexString(int i8) {
        String hexString = Integer.toHexString(i8);
        q0.g(hexString, "toHexString(this)");
        return hexString;
    }

    public static final long and(int i8, long j8) {
        return ((long) i8) & j8;
    }

    public static final void closeQuietly(Socket socket) {
        q0.h(socket, "<this>");
        try {
            socket.close();
        } catch (AssertionError e8) {
            throw e8;
        } catch (RuntimeException e9) {
            if (!q0.c(e9.getMessage(), "bio == null")) {
                throw e9;
            }
        } catch (Exception unused) {
        }
    }

    public static final boolean skipAll(D d6, int i8, TimeUnit timeUnit) {
        q0.h(d6, "<this>");
        q0.h(timeUnit, "timeUnit");
        long jNanoTime = System.nanoTime();
        long jDeadlineNanoTime = d6.timeout().hasDeadline() ? d6.timeout().deadlineNanoTime() - jNanoTime : Long.MAX_VALUE;
        d6.timeout().deadlineNanoTime(Math.min(jDeadlineNanoTime, timeUnit.toNanos(i8)) + jNanoTime);
        try {
            j jVar = new j();
            while (d6.read(jVar, PlaybackStateCompat.ACTION_PLAY_FROM_URI) != -1) {
                jVar.clear();
            }
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                d6.timeout().clearDeadline();
            } else {
                d6.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            return true;
        } catch (InterruptedIOException unused) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                d6.timeout().clearDeadline();
            } else {
                d6.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            return false;
        } catch (Throwable th) {
            if (jDeadlineNanoTime == Long.MAX_VALUE) {
                d6.timeout().clearDeadline();
            } else {
                d6.timeout().deadlineNanoTime(jNanoTime + jDeadlineNanoTime);
            }
            throw th;
        }
    }

    public static final void closeQuietly(ServerSocket serverSocket) {
        q0.h(serverSocket, "<this>");
        try {
            serverSocket.close();
        } catch (RuntimeException e8) {
            throw e8;
        } catch (Exception unused) {
        }
    }
}
