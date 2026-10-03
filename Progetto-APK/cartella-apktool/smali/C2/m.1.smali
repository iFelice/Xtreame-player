.class public final LC2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/D;
.implements LC2/o;


# instance fields
.field public final synthetic a:I

.field public final b:Landroid/content/Context;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p2, p0, LC2/m;->a:I

    .line 5
    .line 6
    iput-object p1, p0, LC2/m;->b:Landroid/content/Context;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(LC2/H;)LC2/C;
    .locals 4

    .line 1
    iget v0, p0, LC2/m;->a:I

    .line 2
    .line 3
    const-class v1, Ljava/lang/Integer;

    .line 4
    .line 5
    iget-object v2, p0, LC2/m;->b:Landroid/content/Context;

    .line 6
    .line 7
    packed-switch v0, :pswitch_data_0

    .line 8
    .line 9
    .line 10
    new-instance p1, LC2/z;

    .line 11
    .line 12
    const/4 v0, 0x2

    .line 13
    invoke-direct {p1, v2, v0}, LC2/z;-><init>(Landroid/content/Context;I)V

    .line 14
    .line 15
    .line 16
    return-object p1

    .line 17
    :pswitch_0
    new-instance p1, LC2/z;

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    invoke-direct {p1, v2, v0}, LC2/z;-><init>(Landroid/content/Context;I)V

    .line 21
    .line 22
    .line 23
    return-object p1

    .line 24
    :pswitch_1
    new-instance v0, LC2/p;

    .line 25
    .line 26
    const-class v3, Ljava/io/InputStream;

    .line 27
    .line 28
    invoke-virtual {p1, v1, v3}, LC2/H;->c(Ljava/lang/Class;Ljava/lang/Class;)LC2/C;

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    invoke-direct {v0, v2, p1}, LC2/p;-><init>(Landroid/content/Context;LC2/C;)V

    .line 33
    .line 34
    .line 35
    return-object v0

    .line 36
    :pswitch_2
    new-instance v0, LC2/p;

    .line 37
    .line 38
    const-class v3, Landroid/content/res/AssetFileDescriptor;

    .line 39
    .line 40
    invoke-virtual {p1, v1, v3}, LC2/H;->c(Ljava/lang/Class;Ljava/lang/Class;)LC2/C;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, v2, p1}, LC2/p;-><init>(Landroid/content/Context;LC2/C;)V

    .line 45
    .line 46
    .line 47
    return-object v0

    .line 48
    :pswitch_3
    new-instance p1, LC2/z;

    .line 49
    .line 50
    const/4 v0, 0x0

    .line 51
    invoke-direct {p1, v2, v0}, LC2/z;-><init>(Landroid/content/Context;I)V

    .line 52
    .line 53
    .line 54
    return-object p1

    .line 55
    :pswitch_4
    new-instance p1, LC2/p;

    .line 56
    .line 57
    invoke-direct {p1, v2, p0}, LC2/p;-><init>(Landroid/content/Context;LC2/o;)V

    .line 58
    .line 59
    .line 60
    return-object p1

    .line 61
    :pswitch_5
    new-instance p1, LC2/p;

    .line 62
    .line 63
    invoke-direct {p1, v2, p0}, LC2/p;-><init>(Landroid/content/Context;LC2/o;)V

    .line 64
    .line 65
    .line 66
    return-object p1

    .line 67
    :pswitch_6
    new-instance p1, LC2/p;

    .line 68
    .line 69
    invoke-direct {p1, v2, p0}, LC2/p;-><init>(Landroid/content/Context;LC2/o;)V

    .line 70
    .line 71
    .line 72
    return-object p1

    .line 73
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
