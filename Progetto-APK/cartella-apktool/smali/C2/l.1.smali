.class public final LC2/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/D;


# instance fields
.field public final synthetic a:I

.field public final b:LC2/g;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    .line 1
    iput p1, p0, LC2/l;->a:I

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    .line 8
    .line 9
    new-instance p1, LC2/g;

    .line 10
    .line 11
    invoke-direct {p1, p0, v0}, LC2/g;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    iput-object p1, p0, LC2/l;->b:LC2/g;

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    new-instance p1, LC2/g;

    .line 21
    .line 22
    invoke-direct {p1}, LC2/g;-><init>()V

    .line 23
    .line 24
    .line 25
    iput-object p1, p0, LC2/l;->b:LC2/g;

    .line 26
    .line 27
    return-void
.end method


# virtual methods
.method public final a(LC2/H;)LC2/C;
    .locals 2

    .line 1
    iget p1, p0, LC2/l;->a:I

    .line 2
    .line 3
    iget-object v0, p0, LC2/l;->b:LC2/g;

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance p1, LD2/a;

    .line 9
    .line 10
    invoke-direct {p1, v0}, LD2/a;-><init>(LC2/g;)V

    .line 11
    .line 12
    .line 13
    return-object p1

    .line 14
    :pswitch_0
    new-instance p1, LC2/h;

    .line 15
    .line 16
    const/4 v1, 0x1

    .line 17
    invoke-direct {p1, v0, v1}, LC2/h;-><init>(Ljava/lang/Object;I)V

    .line 18
    .line 19
    .line 20
    return-object p1

    .line 21
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
