package org.eclipse.paho.client.mqttv3.internal;

/* JADX INFO: loaded from: classes2.dex */
public class SystemHighResolutionTimer implements HighResolutionTimer {
    @Override // org.eclipse.paho.client.mqttv3.internal.HighResolutionTimer
    public long nanoTime() {
        return System.nanoTime();
    }
}
