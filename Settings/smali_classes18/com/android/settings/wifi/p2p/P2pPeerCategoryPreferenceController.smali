.class public Lcom/android/settings/wifi/p2p/P2pPeerCategoryPreferenceController;
.super Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;
.source "P2pPeerCategoryPreferenceController.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/settings/wifi/p2p/P2pCategoryPreferenceController;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string v0, "p2p_peer_devices"

    return-object v0
.end method
