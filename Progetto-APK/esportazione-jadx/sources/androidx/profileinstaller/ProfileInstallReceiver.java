package androidx.profileinstaller;

import D0.U;
import M1.a;
import M1.b;
import M1.d;
import M1.g;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.res.AssetManager;
import android.os.Build;
import android.os.Bundle;
import android.os.Process;
import android.util.Log;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;
import java.util.Arrays;
import org.videolan.libvlc.interfaces.IMediaList;
import p102n0.c;
import p117p0.AbstractC3164b;
import p117p0.t;

/* JADX INFO: loaded from: classes.dex */
public class ProfileInstallReceiver extends BroadcastReceiver {
    /* JADX WARN: Code duplicated, block: B:104:0x018e  */
    /* JADX WARN: Code duplicated, block: B:107:0x019d A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:114:0x01b5 A[Catch: all -> 0x01c6, TRY_LEAVE, TryCatch #21 {all -> 0x01c6, blocks: (B:112:0x01a9, B:114:0x01b5, B:123:0x01c9), top: B:297:0x01a9 }] */
    /* JADX WARN: Code duplicated, block: B:123:0x01c9 A[Catch: all -> 0x01c6, TRY_ENTER, TRY_LEAVE, TryCatch #21 {all -> 0x01c6, blocks: (B:112:0x01a9, B:114:0x01b5, B:123:0x01c9), top: B:297:0x01a9 }] */
    /* JADX WARN: Code duplicated, block: B:135:0x01ec  */
    /* JADX WARN: Code duplicated, block: B:139:0x01f8  */
    /* JADX WARN: Code duplicated, block: B:140:0x01fc  */
    /* JADX WARN: Code duplicated, block: B:149:0x021e A[Catch: all -> 0x025d, TryCatch #35 {all -> 0x025d, blocks: (B:147:0x0218, B:149:0x021e, B:150:0x0222, B:152:0x0228), top: B:311:0x0218 }] */
    /* JADX WARN: Code duplicated, block: B:152:0x0228 A[Catch: all -> 0x025d, TRY_LEAVE, TryCatch #35 {all -> 0x025d, blocks: (B:147:0x0218, B:149:0x021e, B:150:0x0222, B:152:0x0228), top: B:311:0x0218 }] */
    /* JADX WARN: Code duplicated, block: B:21:0x00b2  */
    /* JADX WARN: Code duplicated, block: B:222:0x02b2  */
    /* JADX WARN: Code duplicated, block: B:224:0x02b9  */
    /* JADX WARN: Code duplicated, block: B:227:0x02c0  */
    /* JADX WARN: Code duplicated, block: B:276:0x0141 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:311:0x0218 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:313:0x0200 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:315:0x00d0 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:316:0x01a4 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:320:0x022d A[EDGE_INSN: B:320:0x022d->B:154:0x022d BREAK  A[LOOP:0: B:150:0x0222->B:321:?], SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:33:0x00da A[Catch: all -> 0x00f0, IllegalStateException -> 0x00f2, IOException -> 0x00f4, TRY_LEAVE, TryCatch #35 {IOException -> 0x00f4, IllegalStateException -> 0x00f2, blocks: (B:31:0x00d0, B:33:0x00da, B:45:0x00f6, B:46:0x00fb), top: B:315:0x00d0, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:45:0x00f6 A[Catch: all -> 0x00f0, IllegalStateException -> 0x00f2, IOException -> 0x00f4, TRY_ENTER, TryCatch #35 {IOException -> 0x00f4, IllegalStateException -> 0x00f2, blocks: (B:31:0x00d0, B:33:0x00da, B:45:0x00f6, B:46:0x00fb), top: B:315:0x00d0, outer: #7 }] */
    /* JADX WARN: Code duplicated, block: B:61:0x011d  */
    /* JADX WARN: Code duplicated, block: B:63:0x0123  */
    /* JADX WARN: Code duplicated, block: B:77:0x014d A[Catch: all -> 0x0163, TRY_LEAVE, TryCatch #2 {all -> 0x0163, blocks: (B:75:0x0141, B:77:0x014d, B:88:0x0166, B:89:0x016b), top: B:276:0x0141 }] */
    /* JADX WARN: Code duplicated, block: B:88:0x0166 A[Catch: all -> 0x0163, TRY_ENTER, TryCatch #2 {all -> 0x0163, blocks: (B:75:0x0141, B:77:0x014d, B:88:0x0166, B:89:0x016b), top: B:276:0x0141 }] */
    /* JADX WARN: Code duplicated, block: B:96:0x0176 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:97:0x0178 A[Catch: IllegalStateException -> 0x015c, IOException -> 0x015e, FileNotFoundException -> 0x0161, TRY_LEAVE, TryCatch #31 {FileNotFoundException -> 0x0161, IOException -> 0x015e, IllegalStateException -> 0x015c, blocks: (B:73:0x0137, B:78:0x0157, B:97:0x0178, B:95:0x0175, B:94:0x0172), top: B:319:0x0137 }] */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        Bundle extras;
        File codeCacheDir;
        byte[] bArr;
        FileInputStream fileInputStreamA;
        b[] bVarArrI;
        b[] bVarArr;
        Object obj;
        b[] bVarArr2;
        byte[] bArr2;
        byte[] bArr3;
        boolean z7;
        ByteArrayInputStream byteArrayInputStream;
        Throwable th;
        FileOutputStream fileOutputStream;
        Throwable th2;
        FileChannel channel;
        FileLock fileLockTryLock;
        byte[] bArr4;
        int i8;
        ByteArrayOutputStream byteArrayOutputStream;
        int i9;
        a aVar;
        FileInputStream fileInputStreamA2;
        boolean z8;
        if (intent == null) {
            return;
        }
        String action = intent.getAction();
        if (!"androidx.profileinstaller.action.INSTALL_PROFILE".equals(action)) {
            if ("androidx.profileinstaller.action.SKIP_FILE".equals(action)) {
                Bundle extras2 = intent.getExtras();
                if (extras2 != null) {
                    String string = extras2.getString("EXTRA_SKIP_FILE_OPERATION");
                    if (!"WRITE_SKIP_FILE".equals(string)) {
                        if ("DELETE_SKIP_FILE".equals(string)) {
                            U u7 = new U(this, 14);
                            new File(context.getFilesDir(), "profileinstaller_profileWrittenFor_lastUpdateTime.dat").delete();
                            new t(u7, 11, (Object) null, 4).run();
                            return;
                        }
                        return;
                    }
                    U u8 = new U(this, 14);
                    try {
                        d.d(context.getPackageManager().getPackageInfo(context.getApplicationContext().getPackageName(), 0), context.getFilesDir());
                        new t(u8, 10, (Object) null, 4).run();
                        return;
                    } catch (PackageManager.NameNotFoundException e8) {
                        new t(u8, 7, e8, 4).run();
                        return;
                    }
                }
                return;
            }
            if ("androidx.profileinstaller.action.SAVE_PROFILE".equals(action)) {
                U u9 = new U(this, 14);
                if (Build.VERSION.SDK_INT < 24) {
                    u9.q(13, null);
                    return;
                } else {
                    Process.sendSignal(Process.myPid(), 10);
                    u9.q(12, null);
                    return;
                }
            }
            if (!"androidx.profileinstaller.action.BENCHMARK_OPERATION".equals(action) || (extras = intent.getExtras()) == null) {
                return;
            }
            String string2 = extras.getString("EXTRA_BENCHMARK_OPERATION");
            U u10 = new U(this, 14);
            if (!"DROP_SHADER_CACHE".equals(string2)) {
                u10.q(16, null);
                return;
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 34) {
                codeCacheDir = context.createDeviceProtectedStorageContext().getCacheDir();
            } else if (i10 >= 24) {
                codeCacheDir = context.createDeviceProtectedStorageContext().getCodeCacheDir();
            } else {
                codeCacheDir = i10 == 23 ? context.getCodeCacheDir() : context.getCacheDir();
            }
            if (c.e(codeCacheDir)) {
                u10.q(14, null);
                return;
            } else {
                u10.q(15, null);
                return;
            }
        }
        p093m.a aVar2 = new p093m.a(12);
        U u11 = new U(this, 14);
        Context applicationContext = context.getApplicationContext();
        String packageName = applicationContext.getPackageName();
        ApplicationInfo applicationInfo = applicationContext.getApplicationInfo();
        AssetManager assets = applicationContext.getAssets();
        String name = new File(applicationInfo.sourceDir).getName();
        try {
            PackageInfo packageInfo = context.getPackageManager().getPackageInfo(packageName, 0);
            File filesDir = context.getFilesDir();
            Log.d("ProfileInstaller", "Installing profile for " + context.getPackageName());
            File file = new File(new File("/data/misc/profiles/cur/0", packageName), "primary.prof");
            a aVar3 = new a(assets, aVar2, u11, name, file);
            byte[] bArr5 = (byte[]) aVar3.f4740f;
            if (bArr5 == null) {
                aVar3.b(3, Integer.valueOf(Build.VERSION.SDK_INT));
            } else if (!file.exists()) {
                try {
                    if (file.createNewFile()) {
                        aVar3.f4736b = true;
                        bArr = d.f4755a;
                        fileInputStreamA = aVar3.a(assets, "dexopt/baseline.prof");
                        if (fileInputStreamA == null) {
                            bVarArr = (b[]) aVar3.f4745k;
                            if (bVarArr != null) {
                                fileInputStreamA2 = aVar3.a(assets, (String) aVar3.f4744j);
                                if (fileInputStreamA2 == null) {
                                    if (fileInputStreamA2 != null) {
                                        fileInputStreamA2.close();
                                    }
                                    aVar = null;
                                } else {
                                    if (Arrays.equals(d.f4756b, AbstractC3164b.B(4, fileInputStreamA2))) {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                    aVar3.f4745k = d.f(fileInputStreamA2, AbstractC3164b.B(4, fileInputStreamA2), bArr5, bVarArr);
                                    fileInputStreamA2.close();
                                    aVar = aVar3;
                                }
                                if (aVar != null) {
                                    aVar3 = aVar;
                                }
                            }
                            obj = aVar3.f4739e;
                            bVarArr2 = (b[]) aVar3.f4745k;
                            bArr2 = (byte[]) aVar3.f4740f;
                            if (bVarArr2 != null) {
                                if (aVar3.f4736b) {
                                    throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                }
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                byteArrayOutputStream.write(bArr);
                                byteArrayOutputStream.write(bArr2);
                                if (d.k(byteArrayOutputStream, bArr2, bVarArr2)) {
                                    aVar3.f4741g = byteArrayOutputStream.toByteArray();
                                    byteArrayOutputStream.close();
                                    aVar3.f4745k = null;
                                } else {
                                    ((M1.c) obj).q(5, null);
                                    aVar3.f4745k = null;
                                    byteArrayOutputStream.close();
                                }
                            }
                            bArr3 = (byte[]) aVar3.f4741g;
                            if (bArr3 != null) {
                                if (aVar3.f4736b) {
                                    throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                }
                                byteArrayInputStream = new ByteArrayInputStream(bArr3);
                                fileOutputStream = new FileOutputStream((File) aVar3.f4742h);
                                channel = fileOutputStream.getChannel();
                                fileLockTryLock = channel.tryLock();
                                if (fileLockTryLock != null) {
                                    if (fileLockTryLock.isValid()) {
                                        bArr4 = new byte[IMediaList.Event.ItemAdded];
                                        while (true) {
                                            i8 = byteArrayInputStream.read(bArr4);
                                            if (i8 > 0) {
                                                break;
                                                break;
                                            }
                                            fileOutputStream.write(bArr4, 0, i8);
                                        }
                                        aVar3.b(1, null);
                                        fileLockTryLock.close();
                                        channel.close();
                                        fileOutputStream.close();
                                        byteArrayInputStream.close();
                                        aVar3.f4741g = null;
                                        aVar3.f4745k = null;
                                        z7 = true;
                                    }
                                }
                                throw new IOException("Unable to acquire a lock on the underlying file channel.");
                            }
                            z7 = false;
                            if (z7) {
                                d.d(packageInfo, filesDir);
                            }
                            if (z7) {
                            }
                        } else {
                            if (Arrays.equals(bArr, AbstractC3164b.B(4, fileInputStreamA))) {
                                throw new IllegalStateException("Invalid magic");
                            }
                            bVarArrI = d.i(fileInputStreamA, AbstractC3164b.B(4, fileInputStreamA), aVar3.f4735a);
                            fileInputStreamA.close();
                            aVar3.f4745k = bVarArrI;
                            bVarArr = (b[]) aVar3.f4745k;
                            if (bVarArr != null) {
                                fileInputStreamA2 = aVar3.a(assets, (String) aVar3.f4744j);
                                if (fileInputStreamA2 == null) {
                                    if (fileInputStreamA2 != null) {
                                        fileInputStreamA2.close();
                                    }
                                    aVar = null;
                                } else {
                                    if (Arrays.equals(d.f4756b, AbstractC3164b.B(4, fileInputStreamA2))) {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                    aVar3.f4745k = d.f(fileInputStreamA2, AbstractC3164b.B(4, fileInputStreamA2), bArr5, bVarArr);
                                    fileInputStreamA2.close();
                                    aVar = aVar3;
                                }
                                if (aVar != null) {
                                    aVar3 = aVar;
                                }
                            }
                            obj = aVar3.f4739e;
                            bVarArr2 = (b[]) aVar3.f4745k;
                            bArr2 = (byte[]) aVar3.f4740f;
                            if (bVarArr2 != null) {
                                if (aVar3.f4736b) {
                                    throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                }
                                byteArrayOutputStream = new ByteArrayOutputStream();
                                byteArrayOutputStream.write(bArr);
                                byteArrayOutputStream.write(bArr2);
                                if (d.k(byteArrayOutputStream, bArr2, bVarArr2)) {
                                    ((M1.c) obj).q(5, null);
                                    aVar3.f4745k = null;
                                    byteArrayOutputStream.close();
                                } else {
                                    aVar3.f4741g = byteArrayOutputStream.toByteArray();
                                    byteArrayOutputStream.close();
                                    aVar3.f4745k = null;
                                }
                            }
                            bArr3 = (byte[]) aVar3.f4741g;
                            if (bArr3 != null) {
                                if (aVar3.f4736b) {
                                    throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                }
                                byteArrayInputStream = new ByteArrayInputStream(bArr3);
                                fileOutputStream = new FileOutputStream((File) aVar3.f4742h);
                                channel = fileOutputStream.getChannel();
                                fileLockTryLock = channel.tryLock();
                                if (fileLockTryLock != null) {
                                    if (fileLockTryLock.isValid()) {
                                        bArr4 = new byte[IMediaList.Event.ItemAdded];
                                        while (true) {
                                            i8 = byteArrayInputStream.read(bArr4);
                                            if (i8 > 0) {
                                                break;
                                                break;
                                            }
                                            fileOutputStream.write(bArr4, 0, i8);
                                        }
                                        aVar3.b(1, null);
                                        fileLockTryLock.close();
                                        channel.close();
                                        fileOutputStream.close();
                                        byteArrayInputStream.close();
                                        aVar3.f4741g = null;
                                        aVar3.f4745k = null;
                                        z7 = true;
                                    }
                                }
                                throw new IOException("Unable to acquire a lock on the underlying file channel.");
                            }
                            z7 = false;
                            if (z7) {
                                d.d(packageInfo, filesDir);
                            }
                            if (z7) {
                            }
                        }
                        g.c(context, z8);
                    }
                    aVar3.b(4, null);
                } catch (IOException unused) {
                    aVar3.b(4, null);
                }
            } else {
                if (file.canWrite()) {
                    aVar3.f4736b = true;
                    bArr = d.f4755a;
                    try {
                        fileInputStreamA = aVar3.a(assets, "dexopt/baseline.prof");
                    } catch (FileNotFoundException e9) {
                        u11.q(6, e9);
                        fileInputStreamA = null;
                    } catch (IOException e10) {
                        u11.q(7, e10);
                        fileInputStreamA = null;
                    }
                    try {
                        try {
                            if (fileInputStreamA == null) {
                                try {
                                    if (Arrays.equals(bArr, AbstractC3164b.B(4, fileInputStreamA))) {
                                        throw new IllegalStateException("Invalid magic");
                                    }
                                    bVarArrI = d.i(fileInputStreamA, AbstractC3164b.B(4, fileInputStreamA), aVar3.f4735a);
                                    try {
                                        fileInputStreamA.close();
                                    } catch (IOException e11) {
                                        u11.q(7, e11);
                                    }
                                    aVar3.f4745k = bVarArrI;
                                    bVarArr = (b[]) aVar3.f4745k;
                                    if (bVarArr != null && (i9 = Build.VERSION.SDK_INT) >= 24 && (i9 >= 31 || i9 == 24 || i9 == 25)) {
                                        try {
                                            fileInputStreamA2 = aVar3.a(assets, (String) aVar3.f4744j);
                                            if (fileInputStreamA2 == null) {
                                                try {
                                                    if (Arrays.equals(d.f4756b, AbstractC3164b.B(4, fileInputStreamA2))) {
                                                        throw new IllegalStateException("Invalid magic");
                                                    }
                                                    aVar3.f4745k = d.f(fileInputStreamA2, AbstractC3164b.B(4, fileInputStreamA2), bArr5, bVarArr);
                                                    fileInputStreamA2.close();
                                                    aVar = aVar3;
                                                } catch (Throwable th3) {
                                                    try {
                                                        fileInputStreamA2.close();
                                                        throw th3;
                                                    } catch (Throwable th4) {
                                                        th3.addSuppressed(th4);
                                                        throw th3;
                                                    }
                                                }
                                            } else {
                                                if (fileInputStreamA2 != null) {
                                                    fileInputStreamA2.close();
                                                }
                                                aVar = null;
                                            }
                                        } catch (FileNotFoundException e12) {
                                            u11.q(9, e12);
                                        } catch (IOException e13) {
                                            u11.q(7, e13);
                                        } catch (IllegalStateException e14) {
                                            aVar3.f4745k = null;
                                            u11.q(8, e14);
                                        }
                                        if (aVar != null) {
                                            aVar3 = aVar;
                                        }
                                    }
                                    obj = aVar3.f4739e;
                                    bVarArr2 = (b[]) aVar3.f4745k;
                                    bArr2 = (byte[]) aVar3.f4740f;
                                    if (bVarArr2 != null && bArr2 != null) {
                                        if (aVar3.f4736b) {
                                            throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                        }
                                        try {
                                            byteArrayOutputStream = new ByteArrayOutputStream();
                                            try {
                                                byteArrayOutputStream.write(bArr);
                                                byteArrayOutputStream.write(bArr2);
                                                if (d.k(byteArrayOutputStream, bArr2, bVarArr2)) {
                                                    ((M1.c) obj).q(5, null);
                                                    aVar3.f4745k = null;
                                                    byteArrayOutputStream.close();
                                                } else {
                                                    aVar3.f4741g = byteArrayOutputStream.toByteArray();
                                                    byteArrayOutputStream.close();
                                                    aVar3.f4745k = null;
                                                }
                                            } catch (Throwable th5) {
                                                try {
                                                    byteArrayOutputStream.close();
                                                    throw th5;
                                                } catch (Throwable th6) {
                                                    th5.addSuppressed(th6);
                                                    throw th5;
                                                }
                                            }
                                        } catch (IOException e15) {
                                            ((M1.c) obj).q(7, e15);
                                        } catch (IllegalStateException e16) {
                                            ((M1.c) obj).q(8, e16);
                                        }
                                    }
                                    bArr3 = (byte[]) aVar3.f4741g;
                                    if (bArr3 != null) {
                                        z7 = false;
                                    } else {
                                        try {
                                            if (aVar3.f4736b) {
                                                throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                            }
                                            try {
                                                try {
                                                    byteArrayInputStream = new ByteArrayInputStream(bArr3);
                                                    try {
                                                        try {
                                                            fileOutputStream = new FileOutputStream((File) aVar3.f4742h);
                                                            try {
                                                                try {
                                                                    channel = fileOutputStream.getChannel();
                                                                    try {
                                                                        fileLockTryLock = channel.tryLock();
                                                                        try {
                                                                            try {
                                                                                if (fileLockTryLock != null) {
                                                                                    try {
                                                                                        if (fileLockTryLock.isValid()) {
                                                                                            bArr4 = new byte[IMediaList.Event.ItemAdded];
                                                                                            while (true) {
                                                                                                i8 = byteArrayInputStream.read(bArr4);
                                                                                                if (i8 > 0) {
                                                                                                    break;
                                                                                                } else {
                                                                                                    fileOutputStream.write(bArr4, 0, i8);
                                                                                                }
                                                                                            }
                                                                                            aVar3.b(1, null);
                                                                                            fileLockTryLock.close();
                                                                                            channel.close();
                                                                                            fileOutputStream.close();
                                                                                            byteArrayInputStream.close();
                                                                                            aVar3.f4741g = null;
                                                                                            aVar3.f4745k = null;
                                                                                            z7 = true;
                                                                                        }
                                                                                    } catch (Throwable th7) {
                                                                                        th = th7;
                                                                                        Throwable th8 = th;
                                                                                        if (fileLockTryLock == null) {
                                                                                            throw th8;
                                                                                        }
                                                                                        try {
                                                                                            fileLockTryLock.close();
                                                                                            throw th8;
                                                                                        } catch (Throwable th9) {
                                                                                            th8.addSuppressed(th9);
                                                                                            throw th8;
                                                                                        }
                                                                                    }
                                                                                }
                                                                                throw new IOException("Unable to acquire a lock on the underlying file channel.");
                                                                            } catch (Throwable th10) {
                                                                                th = th10;
                                                                            }
                                                                        } catch (Throwable th11) {
                                                                            th = th11;
                                                                            Throwable th12 = th;
                                                                            if (channel == null) {
                                                                                throw th12;
                                                                            }
                                                                            try {
                                                                                channel.close();
                                                                                throw th12;
                                                                            } catch (Throwable th13) {
                                                                                th12.addSuppressed(th13);
                                                                                throw th12;
                                                                            }
                                                                        }
                                                                    } catch (Throwable th14) {
                                                                        th = th14;
                                                                    }
                                                                } catch (Throwable th15) {
                                                                    th = th15;
                                                                    th2 = th;
                                                                    try {
                                                                        fileOutputStream.close();
                                                                        throw th2;
                                                                    } catch (Throwable th16) {
                                                                        th2.addSuppressed(th16);
                                                                        throw th2;
                                                                    }
                                                                }
                                                            } catch (Throwable th17) {
                                                                th = th17;
                                                                th2 = th;
                                                                fileOutputStream.close();
                                                                throw th2;
                                                            }
                                                        } catch (Throwable th18) {
                                                            th = th18;
                                                            th = th;
                                                            try {
                                                                byteArrayInputStream.close();
                                                                throw th;
                                                            } catch (Throwable th19) {
                                                                th.addSuppressed(th19);
                                                                throw th;
                                                            }
                                                        }
                                                    } catch (Throwable th20) {
                                                        th = th20;
                                                        th = th;
                                                        byteArrayInputStream.close();
                                                        throw th;
                                                    }
                                                } catch (FileNotFoundException e17) {
                                                    e = e17;
                                                    aVar3.b(6, e);
                                                    aVar3.f4741g = null;
                                                    aVar3.f4745k = null;
                                                    z7 = false;
                                                } catch (IOException e18) {
                                                    e = e18;
                                                    aVar3.b(7, e);
                                                    aVar3.f4741g = null;
                                                    aVar3.f4745k = null;
                                                    z7 = false;
                                                }
                                            } catch (FileNotFoundException e19) {
                                                e = e19;
                                                aVar3.b(6, e);
                                                aVar3.f4741g = null;
                                                aVar3.f4745k = null;
                                                z7 = false;
                                            } catch (IOException e20) {
                                                e = e20;
                                                aVar3.b(7, e);
                                                aVar3.f4741g = null;
                                                aVar3.f4745k = null;
                                                z7 = false;
                                            }
                                        } catch (Throwable th21) {
                                            aVar3.f4741g = null;
                                            aVar3.f4745k = null;
                                            throw th21;
                                        }
                                    }
                                    if (z7) {
                                        d.d(packageInfo, filesDir);
                                    }
                                    z8 = z7;
                                } catch (IOException e21) {
                                    u11.q(7, e21);
                                    fileInputStreamA.close();
                                    bVarArrI = null;
                                } catch (IllegalStateException e22) {
                                    u11.q(8, e22);
                                    fileInputStreamA.close();
                                    bVarArrI = null;
                                }
                            } else {
                                bVarArr = (b[]) aVar3.f4745k;
                                if (bVarArr != null) {
                                    fileInputStreamA2 = aVar3.a(assets, (String) aVar3.f4744j);
                                    if (fileInputStreamA2 == null) {
                                        if (fileInputStreamA2 != null) {
                                            fileInputStreamA2.close();
                                        }
                                        aVar = null;
                                    } else {
                                        if (Arrays.equals(d.f4756b, AbstractC3164b.B(4, fileInputStreamA2))) {
                                            throw new IllegalStateException("Invalid magic");
                                        }
                                        aVar3.f4745k = d.f(fileInputStreamA2, AbstractC3164b.B(4, fileInputStreamA2), bArr5, bVarArr);
                                        fileInputStreamA2.close();
                                        aVar = aVar3;
                                    }
                                    if (aVar != null) {
                                        aVar3 = aVar;
                                    }
                                }
                                obj = aVar3.f4739e;
                                bVarArr2 = (b[]) aVar3.f4745k;
                                bArr2 = (byte[]) aVar3.f4740f;
                                if (bVarArr2 != null) {
                                    if (aVar3.f4736b) {
                                        throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    }
                                    byteArrayOutputStream = new ByteArrayOutputStream();
                                    byteArrayOutputStream.write(bArr);
                                    byteArrayOutputStream.write(bArr2);
                                    if (d.k(byteArrayOutputStream, bArr2, bVarArr2)) {
                                        ((M1.c) obj).q(5, null);
                                        aVar3.f4745k = null;
                                        byteArrayOutputStream.close();
                                    } else {
                                        aVar3.f4741g = byteArrayOutputStream.toByteArray();
                                        byteArrayOutputStream.close();
                                        aVar3.f4745k = null;
                                    }
                                }
                                bArr3 = (byte[]) aVar3.f4741g;
                                if (bArr3 != null) {
                                    if (aVar3.f4736b) {
                                        throw new IllegalStateException("This device doesn't support aot. Did you call deviceSupportsAotProfile()?");
                                    }
                                    byteArrayInputStream = new ByteArrayInputStream(bArr3);
                                    fileOutputStream = new FileOutputStream((File) aVar3.f4742h);
                                    channel = fileOutputStream.getChannel();
                                    fileLockTryLock = channel.tryLock();
                                    if (fileLockTryLock != null) {
                                        if (fileLockTryLock.isValid()) {
                                            bArr4 = new byte[IMediaList.Event.ItemAdded];
                                            while (true) {
                                                i8 = byteArrayInputStream.read(bArr4);
                                                if (i8 > 0) {
                                                    break;
                                                    break;
                                                }
                                                fileOutputStream.write(bArr4, 0, i8);
                                            }
                                            aVar3.b(1, null);
                                            fileLockTryLock.close();
                                            channel.close();
                                            fileOutputStream.close();
                                            byteArrayInputStream.close();
                                            aVar3.f4741g = null;
                                            aVar3.f4745k = null;
                                            z7 = true;
                                        }
                                    }
                                    throw new IOException("Unable to acquire a lock on the underlying file channel.");
                                }
                                z7 = false;
                                if (z7) {
                                    d.d(packageInfo, filesDir);
                                }
                                if (z7) {
                                }
                            }
                        } catch (IOException e23) {
                            u11.q(7, e23);
                        }
                        g.c(context, z8);
                    } catch (Throwable th22) {
                        try {
                            fileInputStreamA.close();
                            throw th22;
                        } catch (IOException e24) {
                            u11.q(7, e24);
                            throw th22;
                        }
                    }
                }
                aVar3.b(4, null);
            }
            g.c(context, z8);
        } catch (PackageManager.NameNotFoundException e25) {
            u11.q(7, e25);
            g.c(context, false);
        }
    }
}
