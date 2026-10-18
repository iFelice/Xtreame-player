package M1;

import A0.O;
import D0.U;
import V4.D;
import android.content.res.AssetManager;
import android.os.Build;
import com.google.api.Service;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.Serializable;
import java.util.concurrent.Executor;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import p117p0.t;

/* JADX INFO: loaded from: classes.dex */
public final class a implements D {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4735a;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Object f4737c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Object f4738d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f4739e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final Object f4740f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public Object f4741g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f4742h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Object f4743i;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public Object f4745k;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f4736b = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final Object f4744j = "dexopt/baseline.profm";

    public a(AssetManager assetManager, p093m.a aVar, U u7, String str, File file) {
        this.f4738d = aVar;
        this.f4739e = u7;
        this.f4735a = str;
        this.f4742h = file;
        int i8 = Build.VERSION.SDK_INT;
        byte[] bArr = null;
        if (i8 >= 24) {
            if (i8 < 31) {
                switch (i8) {
                    case 24:
                    case 25:
                        bArr = d.f4761g;
                        break;
                    case Service.BILLING_FIELD_NUMBER /* 26 */:
                        bArr = d.f4760f;
                        break;
                    case 27:
                        bArr = d.f4759e;
                        break;
                    case Service.MONITORING_FIELD_NUMBER /* 28 */:
                    case Service.SYSTEM_PARAMETERS_FIELD_NUMBER /* 29 */:
                    case MqttConnectOptions.CONNECTION_TIMEOUT_DEFAULT /* 30 */:
                        bArr = d.f4758d;
                        break;
                }
            } else {
                bArr = d.f4757c;
            }
        }
        this.f4740f = bArr;
    }

    public final FileInputStream a(AssetManager assetManager, String str) {
        try {
            return assetManager.openFd(str).createInputStream();
        } catch (FileNotFoundException e8) {
            String message = e8.getMessage();
            if (message != null && message.contains("compressed")) {
                ((c) this.f4739e).o();
            }
            return null;
        }
    }

    public final void b(int i8, Serializable serializable) {
        ((Executor) this.f4738d).execute(new t(this, i8, serializable, 3));
    }

    public final void c() {
        O.I(this.f4744j);
        throw null;
    }
}
