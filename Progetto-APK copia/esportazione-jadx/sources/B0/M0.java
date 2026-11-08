package B0;

import D0.C0124n;
import android.content.Context;
import org.eclipse.paho.client.mqttv3.MqttConnectOptions;
import org.eclipse.paho.client.mqttv3.MqttException;
import org.eclipse.paho.client.mqttv3.MqttTopic;
import p086l.e1;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class M0 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f748G;

    /* JADX INFO: renamed from: H, reason: collision with root package name */
    public final /* synthetic */ boolean f749H;

    /* JADX INFO: renamed from: I, reason: collision with root package name */
    public final /* synthetic */ Object f750I;

    public /* synthetic */ M0(int i8, Object obj, boolean z7) {
        this.f748G = i8;
        this.f750I = obj;
        this.f749H = z7;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i8 = this.f748G;
        boolean z7 = this.f749H;
        Object obj = this.f750I;
        switch (i8) {
            case 0:
                e1 e1Var = (e1) obj;
                switch (e1Var.f26250a) {
                    case 1:
                        ((p096m2.c) e1Var.f26253d).B(true, z7);
                        break;
                    default:
                        ((p096m2.e) e1Var.f26253d).F(true, z7);
                        break;
                }
                break;
            case 1:
                e1 e1Var2 = (e1) obj;
                switch (e1Var2.f26250a) {
                    case 1:
                        ((p096m2.c) e1Var2.f26253d).B(true, z7);
                        break;
                    default:
                        ((p096m2.e) e1Var2.f26253d).F(true, z7);
                        break;
                }
                break;
            case 2:
                C0124n c0124n = (C0124n) obj;
                c0124n.getClass();
                String str = p117p0.M.f28050a;
                O o4 = ((L) c0124n.f1962b).f743G;
                if (o4.f763F0 != z7) {
                    o4.f763F0 = z7;
                    o4.f785S.l(23, new I(z7, 1));
                    break;
                }
                break;
            case 3:
                ((p161u5.a) obj).f30511a.e(z7);
                break;
            case 4:
                p161u5.g gVar = (p161u5.g) ((p039f.G) obj).f24904b;
                gVar.f30523f = z7;
                if (gVar.f30520c) {
                    gVar.f30521d.removeCallbacksAndMessages(null);
                    if (gVar.f30523f) {
                        gVar.f30521d.postDelayed(gVar.f30522e, 300000L);
                    }
                }
                break;
            case 5:
                ((P5.f) obj).f5934c.e(z7);
                break;
            default:
                Context context = (Context) obj;
                String str2 = i7.b.f25585a;
                try {
                    MqttConnectOptions mqttConnectOptions = new MqttConnectOptions();
                    if (!z7) {
                        mqttConnectOptions.setWill("client/status/android", (i7.b.f25591g + ":" + i7.b.f25592h + "---disconnected").getBytes(), 1, false);
                    }
                    mqttConnectOptions.setAutomaticReconnect(true);
                    mqttConnectOptions.setCleanSession(true);
                    mqttConnectOptions.setConnectionTimeout(10);
                    mqttConnectOptions.setKeepAliveInterval(20);
                    mqttConnectOptions.setUserName("androidapp");
                    mqttConnectOptions.setPassword("androidapp".toCharArray());
                    i7.b.f25586b.connect(mqttConnectOptions);
                    i7.b.g(z7);
                    if (!z7) {
                        i7.b.e(i7.b.c(context), "OTTRUN/connectionslogs");
                    } else {
                        i7.b.e("Hello", i7.b.f25591g + MqttTopic.TOPIC_LEVEL_SEPARATOR + i7.b.f25592h);
                    }
                } catch (MqttException unused) {
                    i7.b.f(context);
                }
                break;
        }
    }

    public /* synthetic */ M0(Context context, boolean z7) {
        this.f748G = 6;
        this.f749H = z7;
        this.f750I = context;
    }
}
