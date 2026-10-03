.class public abstract Lorg/videolan/libvlc/Dialog$IdDialog;
.super Lorg/videolan/libvlc/Dialog;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/videolan/libvlc/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "IdDialog"
.end annotation


# instance fields
.field protected mId:J


# direct methods
.method public constructor <init>(JILjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3, p4, p5}, Lorg/videolan/libvlc/Dialog;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    .line 2
    .line 3
    .line 4
    iput-wide p1, p0, Lorg/videolan/libvlc/Dialog$IdDialog;->mId:J

    .line 5
    .line 6
    return-void
.end method

.method private native nativeDismiss(J)V
.end method


# virtual methods
.method public dismiss()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lorg/videolan/libvlc/Dialog$IdDialog;->mId:J

    .line 2
    .line 3
    const-wide/16 v2, 0x0

    .line 4
    .line 5
    cmp-long v4, v0, v2

    .line 6
    .line 7
    if-eqz v4, :cond_0

    .line 8
    .line 9
    invoke-direct {p0, v0, v1}, Lorg/videolan/libvlc/Dialog$IdDialog;->nativeDismiss(J)V

    .line 10
    .line 11
    .line 12
    iput-wide v2, p0, Lorg/videolan/libvlc/Dialog$IdDialog;->mId:J

    .line 13
    .line 14
    :cond_0
    return-void
.end method
