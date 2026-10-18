.class public LO5/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq5/p;


# instance fields
.field public final a:Lq5/k;

.field public final b:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Lq5/h;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/util/ArrayList;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, LO5/l;->b:Ljava/util/ArrayList;

    .line 10
    .line 11
    iput-object p1, p0, LO5/l;->a:Lq5/k;

    .line 12
    .line 13
    return-void
.end method


# virtual methods
.method public final a(Lq5/o;)V
    .locals 1

    .line 1
    iget-object v0, p0, LO5/l;->b:Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public b(Lq5/j;)Lm2/l;
    .locals 2

    .line 1
    new-instance v0, Lm2/l;

    .line 2
    .line 3
    new-instance v1, Lw5/e;

    .line 4
    .line 5
    invoke-direct {v1, p1}, Lw5/e;-><init>(Lq5/g;)V

    .line 6
    .line 7
    .line 8
    invoke-direct {v0, v1}, Lm2/l;-><init>(Lc1/d;)V

    .line 9
    .line 10
    .line 11
    return-object v0
.end method
