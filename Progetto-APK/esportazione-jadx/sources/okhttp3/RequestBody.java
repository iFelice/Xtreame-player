package okhttp3;

import D6.e;
import Q6.C0332e;
import Q6.G;
import Q6.k;
import Q6.m;
import Q6.t;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.logging.Logger;
import okhttp3.internal.Util;
import z4.q0;

/* JADX INFO: loaded from: classes2.dex */
public abstract class RequestBody {
    public static final Companion Companion = new Companion(null);

    public static final RequestBody create(m mVar, MediaType mediaType) {
        return Companion.create(mVar, mediaType);
    }

    public long contentLength() {
        return -1L;
    }

    public abstract MediaType contentType();

    public boolean isDuplex() {
        return false;
    }

    public boolean isOneShot() {
        return false;
    }

    public abstract void writeTo(k kVar);

    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(e eVar) {
            this();
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, m mVar, MediaType mediaType, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(mVar, mediaType);
        }

        public final RequestBody create(final m mVar, final MediaType mediaType) {
            q0.h(mVar, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return mVar.c();
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(k kVar) {
                    q0.h(kVar, "sink");
                    kVar.T(mVar);
                }
            };
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, String str, MediaType mediaType, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(str, mediaType);
        }

        public final RequestBody create(MediaType mediaType, m mVar) {
            q0.h(mVar, "content");
            return create(mVar, mediaType);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, byte[] bArr, MediaType mediaType, int i8, int i9, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                mediaType = null;
            }
            if ((i10 & 2) != 0) {
                i8 = 0;
            }
            if ((i10 & 4) != 0) {
                i9 = bArr.length;
            }
            return companion.create(bArr, mediaType, i8, i9);
        }

        public final RequestBody create(MediaType mediaType, byte[] bArr) {
            q0.h(bArr, "content");
            return create$default(this, mediaType, bArr, 0, 0, 12, (Object) null);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, File file, MediaType mediaType, int i8, Object obj) {
            if ((i8 & 1) != 0) {
                mediaType = null;
            }
            return companion.create(file, mediaType);
        }

        public final RequestBody create(MediaType mediaType, byte[] bArr, int i8) {
            q0.h(bArr, "content");
            return create$default(this, mediaType, bArr, i8, 0, 8, (Object) null);
        }

        public static /* synthetic */ RequestBody create$default(Companion companion, MediaType mediaType, byte[] bArr, int i8, int i9, int i10, Object obj) {
            if ((i10 & 4) != 0) {
                i8 = 0;
            }
            if ((i10 & 8) != 0) {
                i9 = bArr.length;
            }
            return companion.create(mediaType, bArr, i8, i9);
        }

        public final RequestBody create(byte[] bArr) {
            q0.h(bArr, "<this>");
            return create$default(this, bArr, (MediaType) null, 0, 0, 7, (Object) null);
        }

        public final RequestBody create(byte[] bArr, MediaType mediaType) {
            q0.h(bArr, "<this>");
            return create$default(this, bArr, mediaType, 0, 0, 6, (Object) null);
        }

        public final RequestBody create(byte[] bArr, MediaType mediaType, int i8) {
            q0.h(bArr, "<this>");
            return create$default(this, bArr, mediaType, i8, 0, 4, (Object) null);
        }

        public final RequestBody create(String str, MediaType mediaType) {
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
            byte[] bytes = str.getBytes(charset);
            q0.g(bytes, "this as java.lang.String).getBytes(charset)");
            return create(bytes, mediaType, 0, bytes.length);
        }

        public final RequestBody create(final byte[] bArr, final MediaType mediaType, final int i8, final int i9) {
            q0.h(bArr, "<this>");
            Util.checkOffsetAndCount(bArr.length, i8, i9);
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$2
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return i9;
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(k kVar) {
                    q0.h(kVar, "sink");
                    kVar.Q(i8, bArr, i9);
                }
            };
        }

        public final RequestBody create(final File file, final MediaType mediaType) {
            q0.h(file, "<this>");
            return new RequestBody() { // from class: okhttp3.RequestBody$Companion$asRequestBody$1
                @Override // okhttp3.RequestBody
                public long contentLength() {
                    return file.length();
                }

                @Override // okhttp3.RequestBody
                public MediaType contentType() {
                    return mediaType;
                }

                @Override // okhttp3.RequestBody
                public void writeTo(k kVar) throws IOException {
                    q0.h(kVar, "sink");
                    File file2 = file;
                    Logger logger = t.f6082a;
                    q0.h(file2, "<this>");
                    C0332e c0332e = new C0332e(new FileInputStream(file2), G.NONE);
                    try {
                        kVar.H(c0332e);
                        q0.k(c0332e, null);
                    } catch (Throwable th) {
                        try {
                            throw th;
                        } catch (Throwable th2) {
                            q0.k(c0332e, th);
                            throw th2;
                        }
                    }
                }
            };
        }

        public final RequestBody create(MediaType mediaType, String str) {
            q0.h(str, "content");
            return create(str, mediaType);
        }

        public final RequestBody create(MediaType mediaType, byte[] bArr, int i8, int i9) {
            q0.h(bArr, "content");
            return create(bArr, mediaType, i8, i9);
        }

        public final RequestBody create(MediaType mediaType, File file) {
            q0.h(file, "file");
            return create(file, mediaType);
        }
    }

    public static final RequestBody create(File file, MediaType mediaType) {
        return Companion.create(file, mediaType);
    }

    public static final RequestBody create(String str, MediaType mediaType) {
        return Companion.create(str, mediaType);
    }

    public static final RequestBody create(MediaType mediaType, m mVar) {
        return Companion.create(mediaType, mVar);
    }

    public static final RequestBody create(MediaType mediaType, File file) {
        return Companion.create(mediaType, file);
    }

    public static final RequestBody create(MediaType mediaType, String str) {
        return Companion.create(mediaType, str);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr) {
        return Companion.create(mediaType, bArr);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i8) {
        return Companion.create(mediaType, bArr, i8);
    }

    public static final RequestBody create(MediaType mediaType, byte[] bArr, int i8, int i9) {
        return Companion.create(mediaType, bArr, i8, i9);
    }

    public static final RequestBody create(byte[] bArr) {
        return Companion.create(bArr);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType) {
        return Companion.create(bArr, mediaType);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i8) {
        return Companion.create(bArr, mediaType, i8);
    }

    public static final RequestBody create(byte[] bArr, MediaType mediaType, int i8, int i9) {
        return Companion.create(bArr, mediaType, i8, i9);
    }
}
