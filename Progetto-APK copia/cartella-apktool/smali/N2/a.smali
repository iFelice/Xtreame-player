.class public final LN2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LN2/f;


# instance fields
.field public final a:I

.field public final b:Z

.field public c:LG/c;


# direct methods
.method public constructor <init>(IZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, LN2/a;->a:I

    .line 5
    .line 6
    iput-boolean p2, p0, LN2/a;->b:Z

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Lw2/a;)LN2/e;
    .locals 1

    .line 1
    sget-object v0, Lw2/a;->K:Lw2/a;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    sget-object p1, LN2/c;->G:LN2/c;

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, LN2/a;->c:LG/c;

    .line 9
    .line 10
    if-nez p1, :cond_1

    .line 11
    .line 12
    new-instance p1, LG/c;

    .line 13
    .line 14
    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    iget v0, p0, LN2/a;->a:I

    .line 18
    .line 19
    iput v0, p1, LG/c;->G:I

    .line 20
    .line 21
    iget-boolean v0, p0, LN2/a;->b:Z

    .line 22
    .line 23
    iput-boolean v0, p1, LG/c;->H:Z

    .line 24
    .line 25
    iput-object p1, p0, LN2/a;->c:LG/c;

    .line 26
    .line 27
    :cond_1
    iget-object p1, p0, LN2/a;->c:LG/c;

    .line 28
    .line 29
    :goto_0
    return-object p1
.end method
