package org.eclipse.paho.client.mqttv3;

/* JADX INFO: loaded from: classes2.dex */
public class DisconnectedBufferOptions {
    public static final boolean DELETE_OLDEST_MESSAGES_DEFAULT = false;
    public static final boolean DISCONNECTED_BUFFER_ENABLED_DEFAULT = false;
    public static final int DISCONNECTED_BUFFER_SIZE_DEFAULT = 5000;
    public static final boolean PERSIST_DISCONNECTED_BUFFER_DEFAULT = false;
    private int bufferSize = DISCONNECTED_BUFFER_SIZE_DEFAULT;
    private boolean bufferEnabled = false;
    private boolean persistBuffer = false;
    private boolean deleteOldestMessages = false;

    public int getBufferSize() {
        return this.bufferSize;
    }

    public boolean isBufferEnabled() {
        return this.bufferEnabled;
    }

    public boolean isDeleteOldestMessages() {
        return this.deleteOldestMessages;
    }

    public boolean isPersistBuffer() {
        return this.persistBuffer;
    }

    public void setBufferEnabled(boolean z7) {
        this.bufferEnabled = z7;
    }

    public void setBufferSize(int i8) {
        if (i8 < 1) {
            throw new IllegalArgumentException();
        }
        this.bufferSize = i8;
    }

    public void setDeleteOldestMessages(boolean z7) {
        this.deleteOldestMessages = z7;
    }

    public void setPersistBuffer(boolean z7) {
        this.persistBuffer = z7;
    }
}
