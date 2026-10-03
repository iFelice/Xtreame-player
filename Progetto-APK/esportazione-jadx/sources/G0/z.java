package G0;

import B0.w0;
import C0.C0082g;
import C0.E;
import C0.I;
import android.media.DeniedByServerException;
import android.media.MediaDrm;
import android.media.NotProvisionedException;
import android.media.metrics.LogSessionId;
import android.os.Build;
import android.text.TextUtils;
import androidx.media3.decoder.CryptoConfig;
import com.google.android.gms.internal.measurement.H1;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;
import okhttp3.HttpUrl;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;
import p094m0.AbstractC3124g;
import p094m0.C3130m;
import p117p0.M;

/* JADX INFO: loaded from: classes.dex */
public final class z implements w {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final C0082g f3389d = new C0082g();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f3390a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final MediaDrm f3391b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f3392c;

    public z(UUID uuid) {
        uuid.getClass();
        UUID uuid2 = AbstractC3124g.f26853b;
        H1.c("Use C.CLEARKEY_UUID instead", !uuid2.equals(uuid));
        this.f3390a = uuid;
        MediaDrm mediaDrm = new MediaDrm((Build.VERSION.SDK_INT >= 27 || !uuid.equals(AbstractC3124g.f26854c)) ? uuid : uuid2);
        this.f3391b = mediaDrm;
        this.f3392c = 1;
        if (AbstractC3124g.f26855d.equals(uuid) && "ASUS_Z00AD".equals(Build.MODEL)) {
            mediaDrm.setPropertyString("securityLevel", "L3");
        }
    }

    @Override // G0.w
    public final Map a(byte[] bArr) {
        return this.f3391b.queryKeyStatus(bArr);
    }

    @Override // G0.w
    public final void b(byte[] bArr, I i8) {
        if (Build.VERSION.SDK_INT >= 31) {
            try {
                MediaDrm mediaDrm = this.f3391b;
                LogSessionId logSessionIdA = i8.a();
                if (logSessionIdA.equals(LogSessionId.LOG_SESSION_ID_NONE)) {
                    return;
                }
                MediaDrm.PlaybackComponent playbackComponent = mediaDrm.getPlaybackComponent(bArr);
                playbackComponent.getClass();
                E.g(playbackComponent).setLogSessionId(logSessionIdA);
            } catch (UnsupportedOperationException unused) {
                p117p0.x.f("FrameworkMediaDrm", "setLogSessionId failed.");
            }
        }
    }

    @Override // G0.w
    public final v c() {
        MediaDrm.ProvisionRequest provisionRequest = this.f3391b.getProvisionRequest();
        return new v(provisionRequest.getData(), provisionRequest.getDefaultUrl());
    }

    @Override // G0.w
    public final CryptoConfig d(byte[] bArr) {
        int i8 = Build.VERSION.SDK_INT;
        UUID uuid = this.f3390a;
        if (i8 < 27 && Objects.equals(uuid, AbstractC3124g.f26854c)) {
            uuid = AbstractC3124g.f26853b;
        }
        return new x(uuid, bArr);
    }

    @Override // G0.w
    public final byte[] e() {
        return this.f3391b.openSession();
    }

    @Override // G0.w
    public final void f(final e eVar) {
        this.f3391b.setOnEventListener(new MediaDrm.OnEventListener() { // from class: G0.y
            @Override // android.media.MediaDrm.OnEventListener
            public final void onEvent(MediaDrm mediaDrm, byte[] bArr, int i8, int i9, byte[] bArr2) {
                z zVar = this.f3387a;
                e eVar2 = eVar;
                zVar.getClass();
                f fVar = eVar2.f3334a.f3363d0;
                fVar.getClass();
                fVar.obtainMessage(i8, bArr).sendToTarget();
            }
        });
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0036, code lost:
    
        if (r1.startsWith("16.0") == false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x003f, code lost:
    
        if (r2.equals(p094m0.AbstractC3124g.f26854c) != false) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:?, code lost:
    
        return r3.requiresSecureDecoder(r7, r3.getSecurityLevel(r6));
     */
    @Override // G0.w
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final boolean g(byte[] r6, java.lang.String r7) throws java.lang.Throwable {
        /*
            r5 = this;
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 31
            java.util.UUID r2 = r5.f3390a
            if (r0 < r1) goto L4a
            java.util.UUID r1 = p094m0.AbstractC3124g.f26855d
            boolean r1 = r2.equals(r1)
            android.media.MediaDrm r3 = r5.f3391b
            if (r1 == 0) goto L39
            java.lang.String r1 = "version"
            java.lang.String r1 = r3.getPropertyString(r1)
            java.lang.String r4 = "v5."
            boolean r4 = r1.startsWith(r4)
            if (r4 != 0) goto L4a
            java.lang.String r4 = "14."
            boolean r4 = r1.startsWith(r4)
            if (r4 != 0) goto L4a
            java.lang.String r4 = "15."
            boolean r4 = r1.startsWith(r4)
            if (r4 != 0) goto L4a
            java.lang.String r4 = "16.0"
            boolean r1 = r1.startsWith(r4)
            if (r1 != 0) goto L4a
            goto L41
        L39:
            java.util.UUID r1 = p094m0.AbstractC3124g.f26854c
            boolean r1 = r2.equals(r1)
            if (r1 == 0) goto L4a
        L41:
            int r6 = E2.a.b(r3, r6)
            boolean r6 = C0.E.y(r3, r7, r6)
            goto L7c
        L4a:
            r1 = 0
            android.media.MediaCrypto r3 = new android.media.MediaCrypto     // Catch: java.lang.Throwable -> L6d android.media.MediaCryptoException -> L6f
            r4 = 27
            if (r0 >= r4) goto L5c
            java.util.UUID r0 = p094m0.AbstractC3124g.f26854c     // Catch: java.lang.Throwable -> L6d android.media.MediaCryptoException -> L6f
            boolean r0 = java.util.Objects.equals(r2, r0)     // Catch: java.lang.Throwable -> L6d android.media.MediaCryptoException -> L6f
            if (r0 == 0) goto L5c
            java.util.UUID r0 = p094m0.AbstractC3124g.f26853b     // Catch: java.lang.Throwable -> L6d android.media.MediaCryptoException -> L6f
            goto L5d
        L5c:
            r0 = r2
        L5d:
            r3.<init>(r0, r6)     // Catch: java.lang.Throwable -> L6d android.media.MediaCryptoException -> L6f
            boolean r6 = r3.requiresSecureDecoderComponent(r7)     // Catch: java.lang.Throwable -> L68 android.media.MediaCryptoException -> L6b
            r3.release()
            goto L7c
        L68:
            r6 = move-exception
            r1 = r3
            goto L7d
        L6b:
            r1 = r3
            goto L6f
        L6d:
            r6 = move-exception
            goto L7d
        L6f:
            java.util.UUID r6 = p094m0.AbstractC3124g.f26854c     // Catch: java.lang.Throwable -> L6d
            boolean r6 = r2.equals(r6)     // Catch: java.lang.Throwable -> L6d
            r6 = r6 ^ 1
            if (r1 == 0) goto L7c
            r1.release()
        L7c:
            return r6
        L7d:
            if (r1 == 0) goto L82
            r1.release()
        L82:
            throw r6
        */
        throw new UnsupportedOperationException("Method not decompiled: G0.z.g(byte[], java.lang.String):boolean");
    }

    @Override // G0.w
    public final void h(byte[] bArr, byte[] bArr2) {
        this.f3391b.restoreKeys(bArr, bArr2);
    }

    @Override // G0.w
    public final void i(byte[] bArr) {
        this.f3391b.closeSession(bArr);
    }

    @Override // G0.w
    public final byte[] j(byte[] bArr, byte[] bArr2) {
        if (AbstractC3124g.f26854c.equals(this.f3390a) && Build.VERSION.SDK_INT < 27) {
            try {
                JSONObject jSONObject = new JSONObject(M.o(bArr2));
                StringBuilder sb = new StringBuilder("{\"keys\":[");
                JSONArray jSONArray = jSONObject.getJSONArray("keys");
                for (int i8 = 0; i8 < jSONArray.length(); i8++) {
                    if (i8 != 0) {
                        sb.append(",");
                    }
                    JSONObject jSONObject2 = jSONArray.getJSONObject(i8);
                    sb.append("{\"k\":\"");
                    sb.append(jSONObject2.getString("k").replace('-', '+').replace('_', '/'));
                    sb.append("\",\"kid\":\"");
                    sb.append(jSONObject2.getString("kid").replace('-', '+').replace('_', '/'));
                    sb.append("\",\"kty\":\"");
                    sb.append(jSONObject2.getString("kty"));
                    sb.append("\"}");
                }
                sb.append("]}");
                bArr2 = sb.toString().getBytes(StandardCharsets.UTF_8);
            } catch (JSONException e8) {
                p117p0.x.d("ClearKeyUtil", "Failed to adjust response data: ".concat(M.o(bArr2)), e8);
            }
        }
        return this.f3391b.provideKeyResponse(bArr, bArr2);
    }

    @Override // G0.w
    public final void k(byte[] bArr) throws DeniedByServerException {
        this.f3391b.provideProvisionResponse(bArr);
    }

    /* JADX WARN: Code duplicated, block: B:108:0x0230  */
    /* JADX WARN: Code duplicated, block: B:136:0x00b9 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x0094  */
    /* JADX WARN: Code duplicated, block: B:31:0x00a5  */
    /* JADX WARN: Code duplicated, block: B:32:0x00a7  */
    /* JADX WARN: Code duplicated, block: B:84:0x01bb  */
    @Override // G0.w
    public final u l(byte[] bArr, List list, int i8, HashMap map) throws NotProvisionedException {
        byte[] bArr2;
        String str;
        int i9;
        C3130m c3130m;
        w0 w0VarW;
        int i10;
        int i11;
        byte[] bArrX;
        w0 w0VarW2;
        UUID uuid = this.f3390a;
        C3130m c3130m2 = null;
        if (list != null) {
            if (!AbstractC3124g.f26855d.equals(uuid)) {
                c3130m = (C3130m) list.get(0);
            } else if (Build.VERSION.SDK_INT < 28 || list.size() <= 1) {
                i9 = 0;
                while (true) {
                    if (i9 < list.size()) {
                        c3130m = (C3130m) list.get(0);
                        break;
                    }
                    C3130m c3130m3 = (C3130m) list.get(i9);
                    byte[] bArr3 = c3130m3.f26957K;
                    bArr3.getClass();
                    w0VarW = E3.f.w(bArr3);
                    if (w0VarW == null) {
                        i10 = -1;
                    } else {
                        i10 = w0VarW.f1120H;
                    }
                    i11 = Build.VERSION.SDK_INT;
                    if ((i11 >= 23 && i10 == 0) || (i11 >= 23 && i10 == 1)) {
                        c3130m = c3130m3;
                        break;
                    }
                }
            } else {
                C3130m c3130m4 = (C3130m) list.get(0);
                int i12 = 0;
                int length = 0;
                while (true) {
                    if (i12 < list.size()) {
                        C3130m c3130m5 = (C3130m) list.get(i12);
                        byte[] bArr4 = c3130m5.f26957K;
                        bArr4.getClass();
                        if (!Objects.equals(c3130m5.f26956J, c3130m4.f26956J) || !Objects.equals(c3130m5.f26955I, c3130m4.f26955I) || E3.f.w(bArr4) == null) {
                            i9 = 0;
                            while (true) {
                                if (i9 < list.size()) {
                                    c3130m = (C3130m) list.get(0);
                                    break;
                                }
                                C3130m c3130m6 = (C3130m) list.get(i9);
                                byte[] bArr5 = c3130m6.f26957K;
                                bArr5.getClass();
                                w0VarW = E3.f.w(bArr5);
                                if (w0VarW == null) {
                                    i10 = -1;
                                } else {
                                    i10 = w0VarW.f1120H;
                                }
                                i11 = Build.VERSION.SDK_INT;
                                i9 = i11 >= 23 ? i9 + 1 : i9 + 1;
                                c3130m = c3130m6;
                                break;
                            }
                        }
                        length += bArr4.length;
                        i12++;
                    } else {
                        byte[] bArr6 = new byte[length];
                        int i13 = 0;
                        for (int i14 = 0; i14 < list.size(); i14++) {
                            byte[] bArr7 = ((C3130m) list.get(i14)).f26957K;
                            bArr7.getClass();
                            int length2 = bArr7.length;
                            System.arraycopy(bArr7, 0, bArr6, i13, length2);
                            i13 += length2;
                        }
                        c3130m = new C3130m(c3130m4.f26954H, c3130m4.f26955I, c3130m4.f26956J, bArr6);
                    }
                }
            }
            byte[] bArrB = c3130m.f26957K;
            bArrB.getClass();
            UUID uuid2 = AbstractC3124g.f26856e;
            if (uuid2.equals(uuid)) {
                byte[] bArrX2 = E3.f.x(uuid, bArrB);
                if (bArrX2 != null) {
                    bArrB = bArrX2;
                }
                p117p0.E e8 = new p117p0.E(bArrB);
                int iN = e8.n();
                short sP = e8.p();
                short sP2 = e8.p();
                if (sP == 1 && sP2 == 1) {
                    short sP3 = e8.p();
                    Charset charset = StandardCharsets.UTF_16LE;
                    String strX = e8.x(sP3, charset);
                    if (!strX.contains("<LA_URL>")) {
                        int iIndexOf = strX.indexOf("</DATA>");
                        if (iIndexOf == -1) {
                            p117p0.x.f("FrameworkMediaDrm", "Could not find the </DATA> tag. Skipping LA_URL workaround.");
                        }
                        String str2 = strX.substring(0, iIndexOf) + "<LA_URL>https://x</LA_URL>" + strX.substring(iIndexOf);
                        int i15 = iN + 52;
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(i15);
                        byteBufferAllocate.order(ByteOrder.LITTLE_ENDIAN);
                        byteBufferAllocate.putInt(i15);
                        byteBufferAllocate.putShort(sP);
                        byteBufferAllocate.putShort(sP2);
                        byteBufferAllocate.putShort((short) (str2.length() * 2));
                        byteBufferAllocate.put(str2.getBytes(charset));
                        bArrB = byteBufferAllocate.array();
                    }
                } else {
                    p117p0.x.e("FrameworkMediaDrm", "Unexpected record count or type. Skipping LA_URL workaround.");
                }
                bArrB = E3.f.b(uuid2, null, bArrB);
            }
            int i16 = Build.VERSION.SDK_INT;
            if (i16 < 27 && Objects.equals(uuid, AbstractC3124g.f26854c) && (w0VarW2 = E3.f.w(bArrB)) != null) {
                bArrB = E3.f.b(AbstractC3124g.f26853b, (UUID[]) w0VarW2.f1123K, (byte[]) w0VarW2.f1122J);
            }
            if (i16 >= 23 || !AbstractC3124g.f26855d.equals(uuid)) {
                if (uuid2.equals(uuid) && "Amazon".equals(Build.MANUFACTURER)) {
                    String str3 = Build.MODEL;
                    if ("AFTB".equals(str3) || "AFTS".equals(str3) || "AFTM".equals(str3) || "AFTT".equals(str3)) {
                        bArrX = E3.f.x(uuid, bArrB);
                        if (bArrX == null) {
                        }
                    }
                }
                bArrX = bArrB;
            } else {
                bArrX = E3.f.x(uuid, bArrB);
                if (bArrX == null) {
                    bArrX = bArrB;
                }
            }
            String str4 = c3130m.f26956J;
            str = (i16 < 26 && AbstractC3124g.f26854c.equals(uuid) && ("video/mp4".equals(str4) || "audio/mp4".equals(str4))) ? "cenc" : str4;
            bArr2 = bArrX;
            c3130m2 = c3130m;
        } else {
            bArr2 = null;
            str = null;
        }
        MediaDrm.KeyRequest keyRequest = this.f3391b.getKeyRequest(bArr, bArr2, str, i8, map);
        byte[] data = keyRequest.getData();
        if (AbstractC3124g.f26854c.equals(uuid) && Build.VERSION.SDK_INT < 27) {
            data = M.o(data).replace('+', '-').replace('/', '_').getBytes(StandardCharsets.UTF_8);
        }
        String defaultUrl = keyRequest.getDefaultUrl();
        if ("<LA_URL>https://x</LA_URL>".equals(defaultUrl)) {
            defaultUrl = HttpUrl.FRAGMENT_ENCODE_SET;
        } else if (Build.VERSION.SDK_INT >= 33 && "https://default.url".equals(defaultUrl)) {
            String propertyString = this.f3391b.getPropertyString("version");
            if (Objects.equals(propertyString, "1.2") || Objects.equals(propertyString, "aidl-1")) {
                defaultUrl = HttpUrl.FRAGMENT_ENCODE_SET;
            }
        }
        if (TextUtils.isEmpty(defaultUrl) && c3130m2 != null) {
            String str5 = c3130m2.f26955I;
            if (!TextUtils.isEmpty(str5)) {
                defaultUrl = str5;
            }
        }
        if (Build.VERSION.SDK_INT >= 23) {
            keyRequest.getRequestType();
        }
        return new u(defaultUrl, data);
    }

    @Override // G0.w
    public final int m() {
        return 2;
    }

    @Override // G0.w
    public final synchronized void release() {
        int i8 = this.f3392c - 1;
        this.f3392c = i8;
        if (i8 == 0) {
            this.f3391b.release();
        }
    }
}
