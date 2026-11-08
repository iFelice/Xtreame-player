package okhttp3;

import A0.O;
import D6.e;
import Q6.j;
import Q6.l;
import Q6.m;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.nio.charset.Charset;
import okhttp3.internal.Util;
import p155t6.h;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class ResponseBody implements Closeable {
    public static final Companion Companion = new Companion(null);
    private Reader reader;

    public static final class BomAwareReader extends Reader {
        private final Charset charset;
        private boolean closed;
        private Reader delegate;
        private final l source;

        public BomAwareReader(l lVar, Charset charset) {
            q0.h(lVar, "source");
            q0.h(charset, "charset");
            this.source = lVar;
            this.charset = charset;
        }

        @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            h hVar;
            this.closed = true;
            Reader reader = this.delegate;
            if (reader != null) {
                reader.close();
                hVar = h.f30319a;
            } else {
                hVar = null;
            }
            if (hVar == null) {
                this.source.close();
            }
        }

        @Override // java.io.Reader
        public int read(char[] cArr, int i8, int i9) throws IOException {
            q0.h(cArr, "cbuf");
            if (this.closed) {
                throw new IOException("Stream closed");
            }
            Reader inputStreamReader = this.delegate;
            if (inputStreamReader == null) {
                inputStreamReader = new InputStreamReader(this.source.Z(), Util.readBomAsCharset(this.source, this.charset));
                this.delegate = inputStreamReader;
            }
            return inputStreamReader.read(cArr, i8, i9);
        }
    }

    private final Charset charset() {
        Charset charset;
        MediaType mediaTypeContentType = contentType();
        return (mediaTypeContentType == null || (charset = mediaTypeContentType.charset(I6.a.f4021a)) == null) ? I6.a.f4021a : charset;
    }

    private final <T> T consumeSource(C6.l lVar, C6.l lVar2) throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException(O.z("Cannot buffer entire body for content length: ", jContentLength));
        }
        l lVarSource = source();
        try {
            T t7 = (T) lVar.invoke(lVarSource);
            q0.k(lVarSource, null);
            int iIntValue = ((Number) lVar2.invoke(t7)).intValue();
            if (jContentLength == -1 || jContentLength == iIntValue) {
                return t7;
            }
            throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + iIntValue + ") disagree");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                q0.k(lVarSource, th);
                throw th2;
            }
        }
    }

    public static final ResponseBody create(l lVar, MediaType mediaType, long j8) {
        return Companion.create(lVar, mediaType, j8);
    }

    public final InputStream byteStream() {
        return source().Z();
    }

    public final m byteString() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException(O.z("Cannot buffer entire body for content length: ", jContentLength));
        }
        l lVarSource = source();
        try {
            m mVarG = lVarSource.G();
            q0.k(lVarSource, null);
            int iC = mVarG.c();
            if (jContentLength == -1 || jContentLength == iC) {
                return mVarG;
            }
            throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + iC + ") disagree");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                q0.k(lVarSource, th);
                throw th2;
            }
        }
    }

    public final byte[] bytes() throws IOException {
        long jContentLength = contentLength();
        if (jContentLength > 2147483647L) {
            throw new IOException(O.z("Cannot buffer entire body for content length: ", jContentLength));
        }
        l lVarSource = source();
        try {
            byte[] bArrP = lVarSource.p();
            q0.k(lVarSource, null);
            int length = bArrP.length;
            if (jContentLength == -1 || jContentLength == length) {
                return bArrP;
            }
            throw new IOException("Content-Length (" + jContentLength + ") and stream length (" + length + ") disagree");
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                q0.k(lVarSource, th);
                throw th2;
            }
        }
    }

    public final Reader charStream() {
        Reader reader = this.reader;
        if (reader != null) {
            return reader;
        }
        BomAwareReader bomAwareReader = new BomAwareReader(source(), charset());
        this.reader = bomAwareReader;
        return bomAwareReader;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        Util.closeQuietly(source());
    }

    public abstract long contentLength();

    public abstract MediaType contentType();

    public abstract l source();

    public final String string() throws IOException {
        l lVarSource = source();
        try {
            String strC = lVarSource.C(Util.readBomAsCharset(lVarSource, charset()));
            q0.k(lVarSource, null);
            return strC;
        } catch (Throwable th) {
            try {
                throw th;
            } catch (Throwable th2) {
                q0.k(lVarSource, th);
                throw th2;
            }
        }
    }

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, l lVar, MediaType mediaType, long j8, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                mediaType = null;
            }
            if ((i8 & 2) != 0) {
                j8 = -1;
            }
            return companion.create(lVar, mediaType, j8);
        }

        public final ResponseBody create(final l lVar, final MediaType mediaType, final long j8) {
            q0.h(lVar, "<this>");
            return new ResponseBody() { // from class: okhttp3.ResponseBody$Companion$asResponseBody$1
                @Override // okhttp3.ResponseBody
                public long contentLength() {
                    return j8;
                }

                @Override // okhttp3.ResponseBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.ResponseBody
                public l source() {
                    return lVar;
                }
            };
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, m mVar, MediaType mediaType, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(mVar, mediaType);
        }

        public final ResponseBody create(m mVar, MediaType mediaType) {
            q0.h(mVar, "<this>");
            j jVar = new j();
            jVar.m0(mVar);
            return create(jVar, mediaType, mVar.c());
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, String str, MediaType mediaType, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        public static /* synthetic */ ResponseBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(bArr, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, long j8, l lVar) {
            q0.h(lVar, "content");
            return create(lVar, mediaType, j8);
        }

        public final ResponseBody create(MediaType mediaType, m mVar) {
            q0.h(mVar, "content");
            return create(mVar, mediaType);
        }

        public final ResponseBody create(String str, MediaType mediaType) {
            q0.h(str, "<this>");
            Charset charset = I6.a.f4021a;
            if (mediaType != null) {
                Charset charsetCharset$default = MediaType.charset$default(mediaType, null, 1, null);
                if (charsetCharset$default == null) {
                    mediaType = MediaType.Companion.parse(mediaType + "; charset=utf-8");
                } else {
                    charset = charsetCharset$default;
                }
            }
            j jVar = new j();
            q0.h(charset, "charset");
            jVar.u0(str, 0, str.length(), charset);
            return create(jVar, mediaType, jVar.f6064H);
        }

        public final ResponseBody create(byte[] bArr, MediaType mediaType) {
            q0.h(bArr, "<this>");
            j jVar = new j();
            jVar.n0(bArr);
            return create(jVar, mediaType, bArr.length);
        }

        public final ResponseBody create(MediaType mediaType, String str) {
            q0.h(str, "content");
            return create(str, mediaType);
        }

        public final ResponseBody create(MediaType mediaType, byte[] bArr) {
            q0.h(bArr, "content");
            return create(bArr, mediaType);
        }
    }

    public static final ResponseBody create(m mVar, MediaType mediaType) {
        return Companion.create(mVar, mediaType);
    }

    public static final ResponseBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final ResponseBody create(MediaType mediaType, long j8, l lVar) {
        return Companion.create(mediaType, j8, lVar);
    }

    public static final ResponseBody create(MediaType mediaType, m mVar) {
        return Companion.create(mediaType, mVar);
    }

    public static final ResponseBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final ResponseBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final ResponseBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }
}
