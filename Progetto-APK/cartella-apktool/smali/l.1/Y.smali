.class public final Ll/Y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:I

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;

.field public final synthetic K:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILandroid/content/DialogInterface;Lpe/hf/black20/PlayStreamEPGActivity;[Ljava/lang/String;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 8
    iput v0, p0, Ll/Y;->G:I

    .line 9
    iput-object p3, p0, Ll/Y;->K:Ljava/lang/Object;

    iput-object p4, p0, Ll/Y;->I:Ljava/lang/Object;

    iput p1, p0, Ll/Y;->H:I

    iput-object p2, p0, Ll/Y;->J:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Lcom/google/android/gms/internal/measurement/U1;ILc4/T;Landroid/content/Intent;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput v0, p0, Ll/Y;->G:I

    .line 3
    iput-object p1, p0, Ll/Y;->I:Ljava/lang/Object;

    iput p2, p0, Ll/Y;->H:I

    iput-object p3, p0, Ll/Y;->J:Ljava/lang/Object;

    iput-object p4, p0, Ll/Y;->K:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ll/d0;Landroid/widget/TextView;Landroid/graphics/Typeface;I)V
    .locals 1

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Ll/Y;->G:I

    .line 6
    iput-object p1, p0, Ll/Y;->K:Ljava/lang/Object;

    iput-object p2, p0, Ll/Y;->I:Ljava/lang/Object;

    iput-object p3, p0, Ll/Y;->J:Ljava/lang/Object;

    iput p4, p0, Ll/Y;->H:I

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget v0, p0, Ll/Y;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Ll/Y;->K:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Ll/Y;->J:Ljava/lang/Object;

    .line 6
    .line 7
    iget v3, p0, Ll/Y;->H:I

    .line 8
    .line 9
    iget-object v4, p0, Ll/Y;->I:Ljava/lang/Object;

    .line 10
    .line 11
    packed-switch v0, :pswitch_data_0

    .line 12
    .line 13
    .line 14
    check-cast v1, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 15
    .line 16
    iget-object v0, v1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 17
    .line 18
    check-cast v4, [Ljava/lang/String;

    .line 19
    .line 20
    aget-object v3, v4, v3

    .line 21
    .line 22
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    invoke-virtual {v0, v3}, Lorg/videolan/libvlc/MediaPlayer;->setSpuTrack(I)Z

    .line 27
    .line 28
    .line 29
    iget-object v0, v1, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 30
    .line 31
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->play()V

    .line 32
    .line 33
    .line 34
    check-cast v2, Landroid/content/DialogInterface;

    .line 35
    .line 36
    invoke-interface {v2}, Landroid/content/DialogInterface;->dismiss()V

    .line 37
    .line 38
    .line 39
    return-void

    .line 40
    :pswitch_0
    check-cast v4, Lcom/google/android/gms/internal/measurement/U1;

    .line 41
    .line 42
    check-cast v2, Lc4/T;

    .line 43
    .line 44
    check-cast v1, Landroid/content/Intent;

    .line 45
    .line 46
    iget-object v0, v4, Lcom/google/android/gms/internal/measurement/U1;->G:Landroid/content/Context;

    .line 47
    .line 48
    move-object v4, v0

    .line 49
    check-cast v4, Lc4/g1;

    .line 50
    .line 51
    invoke-interface {v4, v3}, Lc4/g1;->C(I)Z

    .line 52
    .line 53
    .line 54
    move-result v5

    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    iget-object v2, v2, Lc4/T;->T:Lc4/Q;

    .line 58
    .line 59
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 60
    .line 61
    .line 62
    move-result-object v3

    .line 63
    const-string v5, "Local AppMeasurementService processed last upload request. StartId"

    .line 64
    .line 65
    invoke-virtual {v2, v3, v5}, Lc4/Q;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    .line 67
    .line 68
    const/4 v2, 0x0

    .line 69
    invoke-static {v0, v2, v2}, Lc4/l0;->q(Landroid/content/Context;Lcom/google/android/gms/internal/measurement/V;Ljava/lang/Long;)Lc4/l0;

    .line 70
    .line 71
    .line 72
    move-result-object v0

    .line 73
    iget-object v0, v0, Lc4/l0;->O:Lc4/T;

    .line 74
    .line 75
    invoke-static {v0}, Lc4/l0;->k(Lc4/s0;)V

    .line 76
    .line 77
    .line 78
    const-string v2, "Completed wakeful intent."

    .line 79
    .line 80
    iget-object v0, v0, Lc4/T;->T:Lc4/Q;

    .line 81
    .line 82
    invoke-virtual {v0, v2}, Lc4/Q;->a(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    invoke-interface {v4, v1}, Lc4/g1;->a(Landroid/content/Intent;)V

    .line 86
    .line 87
    .line 88
    :cond_0
    return-void

    .line 89
    :pswitch_1
    check-cast v4, Landroid/widget/TextView;

    .line 90
    .line 91
    check-cast v2, Landroid/graphics/Typeface;

    .line 92
    .line 93
    invoke-virtual {v4, v2, v3}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V

    .line 94
    .line 95
    .line 96
    return-void

    .line 97
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
