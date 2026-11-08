package com.google.android.gms.internal.ads;

import android.content.ContentResolver;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import java.io.EOFException;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.util.List;
import org.eclipse.paho.client.mqttv3.MqttTopic;

/* JADX INFO: renamed from: com.google.android.gms.internal.ads.cB, reason: case insensitive filesystem */
/* JADX INFO: loaded from: classes.dex */
public final class C1142cB extends Nz {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ int f18192e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public AssetFileDescriptor f18193f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f18194g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f18195h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f18196i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Object f18197j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public FileInputStream f18198k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C1142cB(Context context, int i8) {
        super(false);
        this.f18192e = i8;
        if (i8 != 1) {
            this.f18196i = context.getContentResolver();
        } else {
            super(false);
            this.f18196i = context.getApplicationContext();
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final long a(CD cd) throws JA, C1460iI {
        AssetFileDescriptor assetFileDescriptorOpenAssetFileDescriptor;
        long jPosition;
        Resources resourcesForApplication;
        Resources resources;
        int identifier;
        long size;
        int i8 = this.f18192e;
        Object obj = this.f18196i;
        switch (i8) {
            case 0:
                try {
                    try {
                        Uri uriNormalizeScheme = cd.f12592a.normalizeScheme();
                        this.f18197j = uriNormalizeScheme;
                        j(cd);
                        if ("content".equals(uriNormalizeScheme.getScheme())) {
                            Bundle bundle = new Bundle();
                            bundle.putBoolean("android.provider.extra.ACCEPT_ORIGINAL_MEDIA_FORMAT", true);
                            assetFileDescriptorOpenAssetFileDescriptor = ((ContentResolver) obj).openTypedAssetFileDescriptor(uriNormalizeScheme, "*/*", bundle);
                        } else {
                            assetFileDescriptorOpenAssetFileDescriptor = ((ContentResolver) obj).openAssetFileDescriptor(uriNormalizeScheme, "r");
                        }
                        this.f18193f = assetFileDescriptorOpenAssetFileDescriptor;
                        if (assetFileDescriptorOpenAssetFileDescriptor == null) {
                            try {
                                throw new JA(2000, new IOException("Could not open file descriptor for: ".concat(String.valueOf(uriNormalizeScheme))));
                            } catch (IOException e8) {
                                e = e8;
                                throw new JA(true != (e instanceof FileNotFoundException) ? 2000 : 2005, e);
                            }
                        }
                        long length = assetFileDescriptorOpenAssetFileDescriptor.getLength();
                        FileInputStream fileInputStream = new FileInputStream(assetFileDescriptorOpenAssetFileDescriptor.getFileDescriptor());
                        this.f18198k = fileInputStream;
                        long j8 = cd.f12594c;
                        if (length != -1 && j8 > length) {
                            throw new JA(2008, null);
                        }
                        long startOffset = assetFileDescriptorOpenAssetFileDescriptor.getStartOffset();
                        long jSkip = fileInputStream.skip(startOffset + j8) - startOffset;
                        if (jSkip != j8) {
                            throw new JA(2008, null);
                        }
                        if (length == -1) {
                            FileChannel channel = fileInputStream.getChannel();
                            long size2 = channel.size();
                            if (size2 == 0) {
                                this.f18194g = -1L;
                                jPosition = -1;
                            } else {
                                jPosition = size2 - channel.position();
                                this.f18194g = jPosition;
                                if (jPosition < 0) {
                                    throw new JA(2008, null);
                                }
                            }
                        } else {
                            jPosition = length - jSkip;
                            this.f18194g = jPosition;
                            if (jPosition < 0) {
                                throw new JA(2008, null);
                            }
                        }
                        long j9 = cd.f12595d;
                        if (j9 != -1) {
                            this.f18194g = jPosition == -1 ? j9 : Math.min(jPosition, j9);
                        }
                        this.f18195h = true;
                        k(cd);
                        return j9 != -1 ? j9 : this.f18194g;
                    } catch (JA e9) {
                        throw e9;
                    }
                } catch (IOException e10) {
                    e = e10;
                }
                break;
            default:
                this.f18197j = cd;
                j(cd);
                Context context = (Context) obj;
                Uri uriNormalizeScheme2 = cd.f12592a.normalizeScheme();
                if (TextUtils.equals("rawresource", uriNormalizeScheme2.getScheme())) {
                    resources = context.getResources();
                    List<String> pathSegments = uriNormalizeScheme2.getPathSegments();
                    if (pathSegments.size() != 1) {
                        throw new C1460iI(p000a.r.f("rawresource:// URI must have exactly one path element, found ", pathSegments.size()), 2000, null);
                    }
                    try {
                        identifier = Integer.parseInt(pathSegments.get(0));
                    } catch (NumberFormatException unused) {
                        throw new C1460iI("Resource identifier must be an integer.", 1004, null);
                    }
                } else {
                    if (!TextUtils.equals("android.resource", uriNormalizeScheme2.getScheme())) {
                        throw new C1460iI(p000a.r.g("Unsupported URI scheme (", uriNormalizeScheme2.getScheme(), "). Only android.resource is supported."), 1004, null);
                    }
                    String path = uriNormalizeScheme2.getPath();
                    path.getClass();
                    if (path.startsWith(MqttTopic.TOPIC_LEVEL_SEPARATOR)) {
                        path = path.substring(1);
                    }
                    String packageName = TextUtils.isEmpty(uriNormalizeScheme2.getHost()) ? context.getPackageName() : uriNormalizeScheme2.getHost();
                    if (packageName.equals(context.getPackageName())) {
                        resourcesForApplication = context.getResources();
                    } else {
                        try {
                            resourcesForApplication = context.getPackageManager().getResourcesForApplication(packageName);
                        } catch (PackageManager.NameNotFoundException e11) {
                            throw new C1460iI("Package in android.resource:// URI not found. Check http://g.co/dev/packagevisibility.", 2005, e11);
                        }
                    }
                    resources = resourcesForApplication;
                    if (path.matches("\\d+")) {
                        try {
                            identifier = Integer.parseInt(path);
                        } catch (NumberFormatException unused2) {
                            throw new C1460iI("Resource identifier must be an integer.", 1004, null);
                        }
                    } else {
                        identifier = resources.getIdentifier(com.google.protobuf.U2.l(packageName, ":", path), "raw", null);
                        if (identifier == 0) {
                            throw new C1460iI("Resource not found.", 2005, null);
                        }
                    }
                }
                try {
                    AssetFileDescriptor assetFileDescriptorOpenRawResourceFd = resources.openRawResourceFd(identifier);
                    if (assetFileDescriptorOpenRawResourceFd == null) {
                        throw new C1460iI("Resource is compressed: ".concat(String.valueOf(uriNormalizeScheme2)), 2000, null);
                    }
                    this.f18193f = assetFileDescriptorOpenRawResourceFd;
                    long length2 = assetFileDescriptorOpenRawResourceFd.getLength();
                    FileInputStream fileInputStream2 = new FileInputStream(this.f18193f.getFileDescriptor());
                    this.f18198k = fileInputStream2;
                    long j10 = cd.f12594c;
                    try {
                        if (length2 != -1 && j10 > length2) {
                            throw new C1460iI(null, 2008, null);
                        }
                        long startOffset2 = this.f18193f.getStartOffset();
                        long jSkip2 = fileInputStream2.skip(startOffset2 + j10) - startOffset2;
                        if (jSkip2 != j10) {
                            throw new C1460iI(null, 2008, null);
                        }
                        if (length2 == -1) {
                            FileChannel channel2 = fileInputStream2.getChannel();
                            if (channel2.size() == 0) {
                                this.f18194g = -1L;
                                size = -1;
                            } else {
                                size = channel2.size() - channel2.position();
                                this.f18194g = size;
                                if (size < 0) {
                                    throw new C1460iI(null, 2008, null);
                                }
                            }
                        } else {
                            size = length2 - jSkip2;
                            this.f18194g = size;
                            if (size < 0) {
                                throw new C2231xC(2008);
                            }
                        }
                        long j11 = cd.f12595d;
                        if (j11 != -1) {
                            this.f18194g = size == -1 ? j11 : Math.min(size, j11);
                        }
                        this.f18195h = true;
                        k(cd);
                        return j11 != -1 ? j11 : this.f18194g;
                    } catch (C1460iI e12) {
                        throw e12;
                    } catch (IOException e13) {
                        throw new C1460iI(null, 2000, e13);
                    }
                } catch (Resources.NotFoundException e14) {
                    throw new C1460iI(null, 2005, e14);
                }
                break;
        }
    }

    @Override // com.google.android.gms.internal.ads.HL
    public final int e(byte[] bArr, int i8, int i9) throws JA, C1460iI {
        switch (this.f18192e) {
            case 0:
                if (i9 == 0) {
                    return 0;
                }
                long j8 = this.f18194g;
                if (j8 == 0) {
                    return -1;
                }
                if (j8 != -1) {
                    try {
                        i9 = (int) Math.min(j8, i9);
                    } catch (IOException e8) {
                        throw new JA(2000, e8);
                    }
                }
                FileInputStream fileInputStream = this.f18198k;
                int i10 = Et.f13234a;
                int i11 = fileInputStream.read(bArr, i8, i9);
                if (i11 == -1) {
                    return -1;
                }
                long j9 = this.f18194g;
                if (j9 != -1) {
                    this.f18194g = j9 - ((long) i11);
                }
                zzg(i11);
                return i11;
            default:
                if (i9 == 0) {
                    return 0;
                }
                long j10 = this.f18194g;
                if (j10 == 0) {
                    return -1;
                }
                if (j10 != -1) {
                    try {
                        i9 = (int) Math.min(j10, i9);
                    } catch (IOException e9) {
                        throw new C1460iI(null, 2000, e9);
                    }
                }
                FileInputStream fileInputStream2 = this.f18198k;
                int i12 = Et.f13234a;
                int i13 = fileInputStream2.read(bArr, i8, i9);
                if (i13 == -1) {
                    if (this.f18194g == -1) {
                        return -1;
                    }
                    throw new C1460iI("End of stream reached having not read sufficient data.", 2000, new EOFException());
                }
                long j11 = this.f18194g;
                if (j11 != -1) {
                    this.f18194g = j11 - ((long) i13);
                }
                zzg(i13);
                return i13;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final Uri zzc() {
        switch (this.f18192e) {
            case 0:
                return (Uri) this.f18197j;
            default:
                CD cd = (CD) this.f18197j;
                if (cd != null) {
                    return cd.f12592a;
                }
                return null;
        }
    }

    @Override // com.google.android.gms.internal.ads.InterfaceC1556kC
    public final void zzd() {
        switch (this.f18192e) {
            case 0:
                this.f18197j = null;
                try {
                    try {
                        try {
                            FileInputStream fileInputStream = this.f18198k;
                            if (fileInputStream != null) {
                                fileInputStream.close();
                            }
                            this.f18198k = null;
                            try {
                                AssetFileDescriptor assetFileDescriptor = this.f18193f;
                                if (assetFileDescriptor != null) {
                                    assetFileDescriptor.close();
                                    break;
                                }
                                this.f18193f = null;
                                if (this.f18195h) {
                                    this.f18195h = false;
                                    i();
                                    return;
                                }
                                return;
                            } catch (IOException e8) {
                                throw new JA(2000, e8);
                            }
                        } catch (IOException e9) {
                            throw new JA(2000, e9);
                        }
                        break;
                    } catch (Throwable th) {
                        this.f18198k = null;
                        try {
                            AssetFileDescriptor assetFileDescriptor2 = this.f18193f;
                            if (assetFileDescriptor2 != null) {
                                assetFileDescriptor2.close();
                                break;
                            }
                            this.f18193f = null;
                            if (this.f18195h) {
                                this.f18195h = false;
                                i();
                            }
                            throw th;
                        } catch (IOException e10) {
                            throw new JA(2000, e10);
                        }
                    }
                } catch (Throwable th2) {
                    this.f18193f = null;
                    if (this.f18195h) {
                        this.f18195h = false;
                        i();
                    }
                    throw th2;
                }
            default:
                this.f18197j = null;
                try {
                    try {
                        try {
                            FileInputStream fileInputStream2 = this.f18198k;
                            if (fileInputStream2 != null) {
                                fileInputStream2.close();
                            }
                            this.f18198k = null;
                            try {
                                AssetFileDescriptor assetFileDescriptor3 = this.f18193f;
                                if (assetFileDescriptor3 != null) {
                                    assetFileDescriptor3.close();
                                    break;
                                }
                                this.f18193f = null;
                                if (this.f18195h) {
                                    this.f18195h = false;
                                    i();
                                    return;
                                }
                                return;
                            } catch (IOException e11) {
                                throw new C1460iI(null, 2000, e11);
                            }
                        } catch (Throwable th3) {
                            this.f18193f = null;
                            if (this.f18195h) {
                                this.f18195h = false;
                                i();
                            }
                            throw th3;
                        }
                    } catch (IOException e12) {
                        throw new C1460iI(null, 2000, e12);
                    }
                    break;
                } catch (Throwable th4) {
                    this.f18198k = null;
                    try {
                        AssetFileDescriptor assetFileDescriptor4 = this.f18193f;
                        if (assetFileDescriptor4 != null) {
                            assetFileDescriptor4.close();
                            break;
                        }
                        this.f18193f = null;
                        if (this.f18195h) {
                            this.f18195h = false;
                            i();
                        }
                        throw th4;
                    } catch (IOException e13) {
                        throw new C1460iI(null, 2000, e13);
                    }
                }
        }
    }
}
