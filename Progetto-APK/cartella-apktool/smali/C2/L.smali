.class public final LC2/L;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LC2/C;


# static fields
.field public static final a:LC2/L;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, LC2/L;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, LC2/L;->a:LC2/L;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    return p1
.end method

.method public final b(Ljava/lang/Object;IILw2/l;)LC2/B;
    .locals 1

    .line 1
    new-instance p2, LC2/B;

    .line 2
    .line 3
    new-instance p3, LO2/d;

    .line 4
    .line 5
    invoke-direct {p3, p1}, LO2/d;-><init>(Ljava/lang/Object;)V

    .line 6
    .line 7
    .line 8
    new-instance p4, LC2/i;

    .line 9
    .line 10
    const/4 v0, 0x1

    .line 11
    invoke-direct {p4, p1, v0}, LC2/i;-><init>(Ljava/lang/Object;I)V

    .line 12
    .line 13
    .line 14
    invoke-direct {p2, p3, p4}, LC2/B;-><init>(Lw2/i;Lcom/bumptech/glide/load/data/e;)V

    .line 15
    .line 16
    .line 17
    return-object p2
.end method
