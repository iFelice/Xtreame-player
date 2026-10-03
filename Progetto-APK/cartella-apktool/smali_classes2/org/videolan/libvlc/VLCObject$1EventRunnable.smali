.class Lorg/videolan/libvlc/VLCObject$1EventRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/videolan/libvlc/VLCObject;->dispatchEventFromNative(IJJFLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "EventRunnable"
.end annotation


# instance fields
.field private final event:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final listener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener<",
            "TT;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/videolan/libvlc/VLCObject;


# direct methods
.method public constructor <init>(Lorg/videolan/libvlc/VLCObject;Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener<",
            "TT;>;TT;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->this$0:Lorg/videolan/libvlc/VLCObject;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->listener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;

    .line 7
    .line 8
    iput-object p3, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->event:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->listener:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;

    .line 2
    .line 3
    iget-object v1, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->event:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;

    .line 4
    .line 5
    invoke-interface {v0, v1}, Lorg/videolan/libvlc/interfaces/AbstractVLCEvent$Listener;->onEvent(Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;)V

    .line 6
    .line 7
    .line 8
    iget-object v0, p0, Lorg/videolan/libvlc/VLCObject$1EventRunnable;->event:Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;

    .line 9
    .line 10
    invoke-virtual {v0}, Lorg/videolan/libvlc/interfaces/AbstractVLCEvent;->release()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
