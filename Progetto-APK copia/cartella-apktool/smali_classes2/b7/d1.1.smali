.class public final synthetic Lb7/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic G:I

.field public final synthetic H:Ljava/lang/Object;

.field public final synthetic I:Ljava/lang/Object;

.field public final synthetic J:Ljava/lang/Object;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p4, p0, Lb7/d1;->G:I

    .line 5
    .line 6
    iput-object p1, p0, Lb7/d1;->H:Ljava/lang/Object;

    .line 7
    .line 8
    iput-object p2, p0, Lb7/d1;->I:Ljava/lang/Object;

    .line 9
    .line 10
    iput-object p3, p0, Lb7/d1;->J:Ljava/lang/Object;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 5

    .line 1
    iget v0, p0, Lb7/d1;->G:I

    .line 2
    .line 3
    iget-object v1, p0, Lb7/d1;->J:Ljava/lang/Object;

    .line 4
    .line 5
    iget-object v2, p0, Lb7/d1;->I:Ljava/lang/Object;

    .line 6
    .line 7
    iget-object v3, p0, Lb7/d1;->H:Ljava/lang/Object;

    .line 8
    .line 9
    packed-switch v0, :pswitch_data_0

    .line 10
    .line 11
    .line 12
    check-cast v3, Lm0/k0;

    .line 13
    .line 14
    check-cast v2, Le7/d;

    .line 15
    .line 16
    check-cast v1, La3/i;

    .line 17
    .line 18
    invoke-static {v3, v2, v1}, Le7/d;->V(Lm0/k0;Le7/d;La3/i;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    :pswitch_0
    check-cast v3, Lpe/hf/black20/PlayStreamEPGActivity;

    .line 23
    .line 24
    check-cast v2, [Ljava/lang/String;

    .line 25
    .line 26
    check-cast v1, Landroid/content/SharedPreferences$Editor;

    .line 27
    .line 28
    sget-object v0, Lpe/hf/black20/PlayStreamEPGActivity;->THEME:Ljava/lang/String;

    .line 29
    .line 30
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v0, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string v4, "Sutitles ID ----------- "

    .line 36
    .line 37
    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 38
    .line 39
    .line 40
    aget-object v4, v2, p2

    .line 41
    .line 42
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    const-string v4, "XCIPTV_TAG"

    .line 50
    .line 51
    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 52
    .line 53
    .line 54
    const-string v0, "video_subtiltes_vlc"

    .line 55
    .line 56
    const-string v4, "no"

    .line 57
    .line 58
    invoke-interface {v1, v0, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 59
    .line 60
    .line 61
    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 62
    .line 63
    .line 64
    iget-object v0, v3, Lpe/hf/black20/PlayStreamEPGActivity;->f2:Lorg/videolan/libvlc/MediaPlayer;

    .line 65
    .line 66
    invoke-virtual {v0}, Lorg/videolan/libvlc/MediaPlayer;->pause()V

    .line 67
    .line 68
    .line 69
    new-instance v0, Landroid/os/Handler;

    .line 70
    .line 71
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    .line 72
    .line 73
    .line 74
    new-instance v1, Ll/Y;

    .line 75
    .line 76
    invoke-direct {v1, p2, p1, v3, v2}, Ll/Y;-><init>(ILandroid/content/DialogInterface;Lpe/hf/black20/PlayStreamEPGActivity;[Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    const-wide/16 p1, 0x3e8

    .line 80
    .line 81
    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 82
    .line 83
    .line 84
    return-void

    .line 85
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
