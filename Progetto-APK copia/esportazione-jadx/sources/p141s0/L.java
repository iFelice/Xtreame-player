package p141s0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.text.TextUtils;
import com.google.protobuf.U2;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class L extends AbstractC3178c {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Context f29902e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public C3188m f29903f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public AssetFileDescriptor f29904g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public FileInputStream f29905h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public long f29906i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public boolean f29907j;

    public L(Context context) {
        super(false);
        this.f29902e = context.getApplicationContext();
    }

    @Deprecated
    public static Uri buildRawResourceUri(int i8) {
        return Uri.parse("rawresource:///" + i8);
    }

    @Override // p141s0.InterfaceC3184i
    public final long a(C3188m c3188m) throws K {
        Resources resourcesForApplication;
        int identifier;
        int i8;
        Resources resources;
        this.f29903f = c3188m;
        u();
        Uri uriNormalizeScheme = c3188m.f29963a.normalizeScheme();
        boolean zEquals = TextUtils.equals("rawresource", uriNormalizeScheme.getScheme());
        Context context = this.f29902e;
        if (zEquals) {
            resources = context.getResources();
            List<String> pathSegments = uriNormalizeScheme.getPathSegments();
            if (pathSegments.size() != 1) {
                throw new K("rawresource:// URI must have exactly one path element, found " + pathSegments.size(), 2000, null);
            }
            try {
                i8 = Integer.parseInt(pathSegments.get(0));
            } catch (NumberFormatException unused) {
                throw new K("Resource identifier must be an integer.", 1004, null);
            }
        } else {
            if (!TextUtils.equals("android.resource", uriNormalizeScheme.getScheme())) {
                throw new K("Unsupported URI scheme (" + uriNormalizeScheme.getScheme() + "). Only android.resource is supported.", 1004, null);
            }
            String path = uriNormalizeScheme.getPath();
            path.getClass();
            if (path.startsWith(MqttTopic.TOPIC_LEVEL_SEPARATOR)) {
                path = path.substring(1);
            }
            String packageName = TextUtils.isEmpty(uriNormalizeScheme.getHost()) ? context.getPackageName() : uriNormalizeScheme.getHost();
            if (packageName.equals(context.getPackageName())) {
                resourcesForApplication = context.getResources();
            } else {
                try {
                    resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                } catch (PackageManager.NameNotFoundException e8) {
                    throw new K("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", 2005, e8);
                }
            }
            if (path.matches("\\d+")) {
                try {
                    identifier = Integer.parseInt(path);
                } catch (NumberFormatException unused2) {
                    throw new K("Resource identifier must be an integer.", 1004, null);
                }
            } else {
                identifier = resourcesForApplication.getIdentifier(U2.l(packageName, ":", path), "raw", null);
                if (identifier == 0) {
                    throw new K("Resource not found.", 2005, null);
                }
            }
            i8 = identifier;
            resources = resourcesForApplication;
        }
        try {
            AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = resources.openRawResourceFd(i8);
            if (assetFileDescriptorOpenRawResourceFd == null) {
                throw new K("Resource is compressed: " + uriNormalizeScheme, 2000, null);
            }
            this.f29904g = assetFileDescriptorOpenRawResourceFd;
            long length = assetFileDescriptorOpenRawResourceFd.getLength();
            FileInputStream fileInputStream = new FileInputStream(this.f29904g.getFileDescriptor());
            this.f29905h = fileInputStream;
            long j8 = c3188m.f29968f;
            try {
                if (length != -1 && j8 > length) {
                    throw new K(null, 2008, null);
                }
                long startOffset = this.f29904g.getStartOffset();
                long jSkip = fileInputStream.skip(startOffset + j8) - startOffset;
                if (jSkip != j8) {
                    throw new K(null, 2008, null);
                }
                if (length == -1) {
                    FileChannel channel = fileInputStream.getChannel();
                    if (channel.size() == 0) {
                        this.f29906i = -1L;
                    } else {
                        long size = channel.size() - channel.position();
                        this.f29906i = size;
                        if (size < 0) {
                            throw new K(null, 2008, null);
                        }
                    }
                } else {
                    long j9 = length - jSkip;
                    this.f29906i = j9;
                    if (j9 < 0) {
                        throw new C3185j(2008);
                    }
                }
                long j10 = c3188m.f29969g;
                if (j10 != -1) {
                    long j11 = this.f29906i;
                    this.f29906i = j11 == -1 ? j10 : Math.min(j11, j10);
                }
                this.f29907j = true;
                v(c3188m);
                return j10 != -1 ? j10 : this.f29906i;
            } catch (K e9) {
                throw e9;
            } catch (IOException e10) {
                throw new K(null, 2000, e10);
            }
        } catch (Resources.NotFoundException e11) {
            throw new K(null, 2005, e11);
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
            r5.f29903f = r0
            r1 = 2000(0x7d0, float:2.803E-42)
            r2 = 0
            java.io.FileInputStream r3 = r5.f29905h     // Catch: java.lang.Throwable -> Le java.io.IOException -> L10
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
            r5.f29905h = r0
            android.content.res.AssetFileDescriptor r3 = r5.f29904g     // Catch: java.lang.Throwable -> L1c java.io.IOException -> L1e
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
            r5.f29904g = r0
            boolean r0 = r5.f29907j
            if (r0 == 0) goto L2b
            r5.f29907j = r2
            r5.t()
        L2b:
            return
        L2c:
            s0.K r4 = new s0.K     // Catch: java.lang.Throwable -> L1c
            r4.<init>(r0, r1, r3)     // Catch: java.lang.Throwable -> L1c
            throw r4     // Catch: java.lang.Throwable -> L1c
        L32:
            r5.f29904g = r0
            boolean r0 = r5.f29907j
            if (r0 == 0) goto L3d
            r5.f29907j = r2
            r5.t()
        L3d:
            throw r1
        L3e:
            s0.K r4 = new s0.K     // Catch: java.lang.Throwable -> Le
            r4.<init>(r0, r1, r3)     // Catch: java.lang.Throwable -> Le
            throw r4     // Catch: java.lang.Throwable -> Le
        L44:
            r5.f29905h = r0
            android.content.res.AssetFileDescriptor r4 = r5.f29904g     // Catch: java.lang.Throwable -> L4e java.io.IOException -> L50
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
            r5.f29904g = r0
            boolean r0 = r5.f29907j
            if (r0 == 0) goto L5d
            r5.f29907j = r2
            r5.t()
        L5d:
            throw r3
        L5e:
            s0.K r4 = new s0.K     // Catch: java.lang.Throwable -> L4e
            r4.<init>(r0, r1, r3)     // Catch: java.lang.Throwable -> L4e
            throw r4     // Catch: java.lang.Throwable -> L4e
        L64:
            r5.f29904g = r0
            boolean r0 = r5.f29907j
            if (r0 == 0) goto L6f
            r5.f29907j = r2
            r5.t()
        L6f:
            throw r1
        */
        throw new UnsupportedOperationException("Method not decompiled: p141s0.L.close():void");
    }

    @Override // p141s0.InterfaceC3184i
    public final Uri getUri() {
        C3188m c3188m = this.f29903f;
        if (c3188m != null) {
            return c3188m.f29963a;
        }
        return null;
    }

    @Override // p094m0.InterfaceC3127j
    public final int q(byte[] bArr, int i8, int i9) throws K {
        if (i9 == 0) {
            return 0;
        }
        long j8 = this.f29906i;
        if (j8 == 0) {
            return -1;
        }
        if (j8 != -1) {
            try {
                i9 = (int) Math.min(j8, i9);
            } catch (IOException e8) {
                throw new K(null, 2000, e8);
            }
        }
        FileInputStream fileInputStream = this.f29905h;
        String str = M.f28050a;
        int i10 = fileInputStream.read(bArr, i8, i9);
        if (i10 == -1) {
            if (this.f29906i == -1) {
                return -1;
            }
            throw new K("End of stream reached having not read sufficient data.", 2000, new EOFException());
        }
        long j9 = this.f29906i;
        if (j9 != -1) {
            this.f29906i = j9 - ((long) i10);
        }
        s(i10);
        return i10;
    }
}
