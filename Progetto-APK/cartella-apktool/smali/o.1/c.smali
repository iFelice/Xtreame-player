.class public final Lo/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:I

.field public final synthetic J:Landroid/os/Parcelable;

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Landroidx/work/impl/foreground/SystemForegroundService;ILandroid/app/Notification;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Lo/c;->G:I

    .line 3
    iput-object p1, p0, Lo/c;->K:Ljava/lang/Object;

    iput p2, p0, Lo/c;->H:I

    iput-object p3, p0, Lo/c;->J:Landroid/os/Parcelable;

    iput p4, p0, Lo/c;->I:I

    return-void
.end method

.method public constructor <init>(Lo/d;IILandroid/os/Bundle;)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lo/c;->G:I

    .line 6
    iput-object p1, p0, Lo/c;->K:Ljava/lang/Object;

    iput p2, p0, Lo/c;->H:I

    iput p3, p0, Lo/c;->I:I

    iput-object p4, p0, Lo/c;->J:Landroid/os/Parcelable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Lo/c;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lo/c;->K:Ljava/lang/Object;

    .line 4
    .line 5
    iget v2, p0, Lo/c;->H:I

    .line 6
    .line 7
    iget v3, p0, Lo/c;->I:I

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 13
    .line 14
    const/16 v4, 0x1f

    .line 15
    .line 16
    iget-object v5, p0, Lo/c;->J:Landroid/os/Parcelable;

    .line 17
    .line 18
    if-lt v0, v4, :cond_0

    .line 19
    .line 20
    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 21
    .line 22
    check-cast v5, Landroid/app/Notification;

    .line 23
    .line 24
    invoke-static {v1, v2, v5, v3}, Ll2/e;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    .line 25
    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    const/16 v4, 0x1d

    .line 29
    .line 30
    if-lt v0, v4, :cond_1

    .line 31
    .line 32
    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 33
    .line 34
    check-cast v5, Landroid/app/Notification;

    .line 35
    .line 36
    invoke-static {v1, v2, v5, v3}, Ll2/d;->a(Landroid/app/Service;ILandroid/app/Notification;I)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    check-cast v1, Landroidx/work/impl/foreground/SystemForegroundService;

    .line 41
    .line 42
    check-cast v5, Landroid/app/Notification;

    .line 43
    .line 44
    invoke-virtual {v1, v2, v5}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    .line 45
    .line 46
    .line 47
    :goto_0
    return-void

    .line 48
    :pswitch_0
    check-cast v1, Lo/d;

    .line 49
    .line 50
    iget-object v0, v1, Lo/d;->H:Lcom/google/android/gms/internal/ads/b8;

    .line 51
    .line 52
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/internal/ads/b8;->c(II)V

    .line 53
    .line 54
    .line 55
    return-void

    .line 56
    nop

    .line 57
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
