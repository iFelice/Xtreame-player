package p141s0;

import android.content.ContentResolver;
import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.net.Uri;
import android.os.Bundle;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.Objects;
import p117p0.M;

/* JADX INFO: renamed from: s0.f, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C3181f extends AbstractC3178c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ContentResolver f29936e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public Uri f29937f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AssetFileDescriptor f29938g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FileInputStream f29939h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f29940i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f29941j;

    public C3181f(Context context) {
        super(false);
        this.f29936e = context.getContentResolver();
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws C3180e {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        try {
            Uri uriNormalizeScheme = c3188m.f29963a.normalizeScheme();
            this.f29937f = uriNormalizeScheme;
            u();
            boolean zEquals = Objects.equals(uriNormalizeScheme.getScheme(), "content");
            ContentResolver contentResolver = this.f29936e;
            if (zEquals) {
                Bundle bundle = new Bundle();
                bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openTypedAssetFileDescriptor(uriNormalizeScheme, "*/*", bundle);
            } else {
                assetFileDescriptorOpenAssetFileDescriptor = contentResolver.openAssetFileDescriptor(uriNormalizeScheme, "r");
            }
            this.f29938g = assetFileDescriptorOpenAssetFileDescriptor;
            if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                throw new C3180e(2000, new IOException("Could not open file descriptor for: " + uriNormalizeScheme));
            }
            long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
            FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
            this.f29939h = fileInputStream;
            long j8 = c3188m.f29968f;
            if (length != -1 && j8 > length) {
                throw new C3180e(2008, null);
            }
            long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
            long jSkip = fileInputStream.skip(startOffset + j8) - startOffset;
            if (jSkip != j8) {
                throw new C3180e(2008, null);
            }
            if (length == -1) {
                FileChannel channel = fileInputStream.getChannel();
                long size = channel.size();
                if (size == 0) {
                    this.f29940i = -1L;
                } else {
                    long jPosition = size - channel.position();
                    this.f29940i = jPosition;
                    if (jPosition < 0) {
                        throw new C3180e(2008, null);
                    }
                }
            } else {
                long j9 = length - jSkip;
                this.f29940i = j9;
                if (j9 < 0) {
                    throw new C3180e(2008, null);
                }
            }
            long j10 = c3188m.f29969g;
            if (j10 != -1) {
                long j11 = this.f29940i;
                this.f29940i = j11 == -1 ? j10 : Math.min(j11, j10);
            }
            this.f29941j = true;
            v(c3188m);
            return j10 != -1 ? j10 : this.f29940i;
        } catch (C3180e e8) {
            throw e8;
        } catch (IOException e9) {
            throw new C3180e(e9 instanceof FileNotFoundException ? 2005 : 2000, e9);
        }
    }

    /* JADX WARN: Bottom block not found for handler: all -> 0x000e */
    /* JADX WARN: Bottom block not found for handler: all -> 0x004e */
    @Override // p141s0.InterfaceC3184i
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final void close() {
        /*
            r5 = this;
            r0 = 0
            r5.f29937f = r0
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = 0
            java.io.FileInputStream r3 = r5.f29939h     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            if (r3 == 0) goto L12
            r3.close()     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
            goto L12
        Le:
            r3 = move-exception
            goto L44
        L10:
            r3 = move-exception
            goto L3e
        L12:
            r5.f29939h = r0
            android.content.res.AssetFileDescriptor r3 = r5.f29938g     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            if (r3 == 0) goto L20
            r3.close()     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
            goto L20
        L1c:
            r1 = move-exception
            goto L32
        L1e:
            r3 = move-exception
            goto L2c
        L20:
            r5.f29938g = r0
            boolean r0 = r5.f29941j
            if (r0 == 0) goto L2b
            r5.f29941j = r2
            r5.t()
        L2b:
            return
        L2c:
            s0.e r4 = new s0.e     // Catch: java.lang.Throwable -> L1c
            r4.<init>(r1, r3)     // Catch: java.lang.Throwable -> L1c
            throw r4     // Catch: java.lang.Throwable -> L1c
        L32:
            r5.f29938g = r0
            boolean r0 = r5.f29941j
            if (r0 == 0) goto L3d
            r5.f29941j = r2
            r5.t()
        L3d:
            throw r1
        L3e:
            s0.e r4 = new s0.e     // Catch: java.lang.Throwable -> Le
            r4.<init>(r1, r3)     // Catch: java.lang.Throwable -> Le
            throw r4     // Catch: java.lang.Throwable -> Le
        L44:
            r5.f29939h = r0
            android.content.res.AssetFileDescriptor r4 = r5.f29938g     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L50
            if (r4 == 0) goto L52
            r4.close()     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L50
            goto L52
        L4e:
            r1 = move-exception
            goto L64
        L50:
            r3 = move-exception
            goto L5e
        L52:
            r5.f29938g = r0
            boolean r0 = r5.f29941j
            if (r0 == 0) goto L5d
            r5.f29941j = r2
            r5.t()
        L5d:
            throw r3
        L5e:
            s0.e r4 = new s0.e     // Catch: java.lang.Throwable -> L4e
            r4.<init>(r1, r3)     // Catch: java.lang.Throwable -> L4e
            throw r4     // Catch: java.lang.Throwable -> L4e
        L64:
            r5.f29938g = r0
            boolean r0 = r5.f29941j
            if (r0 == 0) goto L6f
            r5.f29941j = r2
            r5.t()
        L6f:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p141s0.C3181f.close():void");
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        return this.f29937f;
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws C3180e {
        if (i9 == 0) {
            return 0;
        }
        long j8 = this.f29940i;
        if (j8 == 0) {
            return -1;
        }
        if (j8 != -1) {
            try {
                i9 = (int) Math.min(j8, i9);
            } catch (IOException e8) {
                throw new C3180e(2000, e8);
            }
        }
        FileInputStream fileInputStream = this.f29939h;
        String str = M.f28050a;
        int i10 = fileInputStream.read(bArr, i8, i9);
        if (i10 == -1) {
            return -1;
        }
        long j9 = this.f29940i;
        if (j9 != -1) {
            this.f29940i = j9 - ((long) i10);
        }
        s(i10);
        return i10;
    }
}
