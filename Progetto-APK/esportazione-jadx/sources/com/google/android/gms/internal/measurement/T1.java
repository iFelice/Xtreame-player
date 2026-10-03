package com.google.android.gms.internal.measurement;

import java.util.ArrayList;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import org.eclipse.paho.client.mqttv3.MqttClient;
import org.eclipse.paho.client.mqttv3.MqttException;

/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class T1 implements Runnable {

    /* JADX INFO: renamed from: G, reason: collision with root package name */
    public final /* synthetic */ int f23006G;

    public /* synthetic */ T1(int i8) {
        this.f23006G = i8;
    }

    @Override // java.lang.Runnable
    public final void run() {
        switch (this.f23006G) {
            case 0:
                X1.f23043h.incrementAndGet();
                break;
            case 1:
                X1.f23043h.incrementAndGet();
                break;
            case 2:
                break;
            case 3:
                for (ScheduledThreadPoolExecutor scheduledThreadPoolExecutor : new ArrayList(p123p6.j.f28255d.keySet())) {
                    if (scheduledThreadPoolExecutor.isShutdown()) {
                        p123p6.j.f28255d.remove(scheduledThreadPoolExecutor);
                    } else {
                        scheduledThreadPoolExecutor.purge();
                    }
                }
                break;
            default:
                try {
                    MqttClient mqttClient = i7.b.f25586b;
                    if (mqttClient != null && mqttClient.isConnected()) {
                        i7.b.f25586b.disconnect();
                        i7.b.f25586b.close();
                        break;
                    }
                } catch (MqttException unused) {
                    return;
                }
                break;
        }
    }

    public final String toString() {
        switch (this.f23006G) {
            case 2:
                return "EmptyRunnable";
            default:
                return super.toString();
        }
    }
}
