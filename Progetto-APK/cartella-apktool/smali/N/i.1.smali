.class public final synthetic LN/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm0/k;
.implements Lt0/k;
.implements LW0/v;
.implements LA0/H;
.implements Lp0/u;
.implements Lp0/v;
.implements Lp0/j;
.implements LG0/q;
.implements LK0/h;
.implements LK0/y;
.implements LW0/o;
.implements Li1/g;


# instance fields
.field public final synthetic G:I


# direct methods
.method public synthetic constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LN/i;->G:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a(Landroid/net/Uri;Ljava/util/Map;)[LW0/s;
    .locals 0

    .line 1
    invoke-virtual {p0}, LN/i;->e()[LW0/s;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    return-object p1
.end method

.method public final accept(Ljava/lang/Object;)V
    .locals 1

    .line 1
    iget v0, p0, LN/i;->G:I

    .line 2
    .line 3
    sparse-switch v0, :sswitch_data_0

    .line 4
    .line 5
    .line 6
    check-cast p1, Ljava/util/concurrent/ExecutorService;

    .line 7
    .line 8
    invoke-interface {p1}, Ljava/util/concurrent/ExecutorService;->shutdown()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :sswitch_0
    check-cast p1, LO0/Q;

    .line 13
    .line 14
    iget-object p1, p1, LO0/Q;->b:LG0/q;

    .line 15
    .line 16
    invoke-interface {p1}, LG0/q;->release()V

    .line 17
    .line 18
    .line 19
    return-void

    .line 20
    :sswitch_1
    check-cast p1, LG0/o;

    .line 21
    .line 22
    invoke-virtual {p1}, LG0/o;->c()V

    .line 23
    .line 24
    .line 25
    return-void

    .line 26
    :sswitch_2
    check-cast p1, LG0/o;

    .line 27
    .line 28
    invoke-virtual {p1}, LG0/o;->a()V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :sswitch_3
    check-cast p1, LG0/o;

    .line 33
    .line 34
    invoke-virtual {p1}, LG0/o;->b()V

    .line 35
    .line 36
    .line 37
    return-void

    .line 38
    nop

    .line 39
    :sswitch_data_0
    .sparse-switch
        0xa -> :sswitch_3
        0xb -> :sswitch_2
        0xc -> :sswitch_1
        0x12 -> :sswitch_0
    .end sparse-switch
.end method

.method public final b(Ljava/lang/Object;)I
    .locals 3

    .line 1
    iget v0, p0, LN/i;->G:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    const/4 v2, 0x0

    .line 5
    check-cast p1, LK0/o;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    sget-object v0, LK0/z;->a:Ljava/util/HashMap;

    .line 11
    .line 12
    iget-boolean v0, p1, LK0/o;->h:Z

    .line 13
    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const/4 v2, 0x2

    .line 17
    :cond_0
    iget-boolean p1, p1, LK0/o;->i:Z

    .line 18
    .line 19
    xor-int/2addr p1, v1

    .line 20
    add-int/2addr v2, p1

    .line 21
    return v2

    .line 22
    :pswitch_0
    sget-object v0, LK0/z;->a:Ljava/util/HashMap;

    .line 23
    .line 24
    iget-object p1, p1, LK0/o;->a:Ljava/lang/String;

    .line 25
    .line 26
    const-string v0, "OMX.google"

    .line 27
    .line 28
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 29
    .line 30
    .line 31
    move-result v0

    .line 32
    if-nez v0, :cond_3

    .line 33
    .line 34
    const-string v0, "c2.android"

    .line 35
    .line 36
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 37
    .line 38
    .line 39
    move-result v0

    .line 40
    if-eqz v0, :cond_1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    .line 44
    .line 45
    const/16 v1, 0x1a

    .line 46
    .line 47
    if-ge v0, v1, :cond_2

    .line 48
    .line 49
    const-string v0, "OMX.MTK.AUDIO.DECODER.RAW"

    .line 50
    .line 51
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result p1

    .line 55
    if-eqz p1, :cond_2

    .line 56
    .line 57
    const/4 v1, -0x1

    .line 58
    goto :goto_0

    .line 59
    :cond_2
    const/4 v1, 0x0

    .line 60
    :cond_3
    :goto_0
    return v1

    .line 61
    :pswitch_data_0
    .packed-switch 0x10
        :pswitch_0
    .end packed-switch
.end method

.method public final c(Ljava/lang/Object;Lm0/r;)V
    .locals 0

    .line 1
    check-cast p1, LC0/c;

    .line 2
    .line 3
    return-void
.end method

.method public final d(Lm0/o0;)V
    .locals 2

    .line 1
    iget v0, p0, LN/i;->G:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "DebugViewShaderProgram"

    .line 7
    .line 8
    const-string v1, "Exception caught by errorListener."

    .line 9
    .line 10
    invoke-static {v0, v1, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    .line 12
    .line 13
    return-void

    .line 14
    :pswitch_0
    const-string v0, "BaseGlShaderProgram"

    .line 15
    .line 16
    const-string v1, "Exception caught by default BaseGlShaderProgram errorListener."

    .line 17
    .line 18
    invoke-static {v0, v1, p1}, Lp0/x;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    return-void

    .line 22
    nop

    .line 23
    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public final e()[LW0/s;
    .locals 3

    .line 1
    new-instance v0, Ln1/d;

    .line 2
    .line 3
    invoke-direct {v0}, Ln1/d;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, 0x1

    .line 7
    new-array v1, v1, [LW0/s;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    aput-object v0, v1, v2

    .line 11
    .line 12
    return-object v1
.end method

.method public final f()Ljava/lang/reflect/Constructor;
    .locals 6

    .line 1
    iget v0, p0, LN/i;->G:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const-class v2, LW0/s;

    .line 5
    .line 6
    packed-switch v0, :pswitch_data_0

    .line 7
    .line 8
    .line 9
    sget-object v0, LW0/p;->I:[I

    .line 10
    .line 11
    const-string v0, "androidx.media3.decoder.midi.MidiExtractor"

    .line 12
    .line 13
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    new-array v1, v1, [Ljava/lang/Class;

    .line 22
    .line 23
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    return-object v0

    .line 28
    :pswitch_0
    sget-object v0, LW0/p;->I:[I

    .line 29
    .line 30
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 31
    .line 32
    sget-object v3, Landroidx/media3/decoder/flac/j;->a:Lx0/b;

    .line 33
    .line 34
    new-array v3, v1, [Ljava/lang/Class;

    .line 35
    .line 36
    const-class v4, Landroidx/media3/decoder/flac/j;

    .line 37
    .line 38
    const-string v5, "isAvailable"

    .line 39
    .line 40
    invoke-virtual {v4, v5, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    move-result-object v3

    .line 44
    new-array v4, v1, [Ljava/lang/Object;

    .line 45
    .line 46
    const/4 v5, 0x0

    .line 47
    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v3

    .line 51
    invoke-virtual {v0, v3}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    if-eqz v0, :cond_0

    .line 56
    .line 57
    const-class v0, Landroidx/media3/decoder/flac/i;

    .line 58
    .line 59
    invoke-virtual {v0, v2}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    const/4 v2, 0x1

    .line 64
    new-array v2, v2, [Ljava/lang/Class;

    .line 65
    .line 66
    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 67
    .line 68
    aput-object v3, v2, v1

    .line 69
    .line 70
    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    .line 71
    .line 72
    .line 73
    move-result-object v5

    .line 74
    :cond_0
    return-object v5

    .line 75
    :pswitch_data_0
    .packed-switch 0x14
        :pswitch_0
    .end packed-switch
.end method

.method public final invoke(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget v0, p0, LN/i;->G:I

    .line 2
    .line 3
    check-cast p1, Lm0/W;

    .line 4
    .line 5
    packed-switch v0, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    invoke-interface {p1}, Lm0/W;->x()V

    .line 9
    .line 10
    .line 11
    return-void

    .line 12
    :pswitch_0
    sget v0, LB0/O;->Q0:I

    .line 13
    .line 14
    new-instance v0, LB0/Y;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {v0, v1}, LB0/Y;-><init>(I)V

    .line 18
    .line 19
    .line 20
    new-instance v1, LB0/w;

    .line 21
    .line 22
    const/4 v2, 0x2

    .line 23
    const/16 v3, 0x3eb

    .line 24
    .line 25
    invoke-direct {v1, v2, v0, v3}, LB0/w;-><init>(ILjava/lang/Throwable;I)V

    .line 26
    .line 27
    .line 28
    invoke-interface {p1, v1}, Lm0/W;->p(LB0/w;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    nop

    .line 33
    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_0
    .end packed-switch
.end method

.method public final release()V
    .locals 0

    .line 1
    return-void
.end method
