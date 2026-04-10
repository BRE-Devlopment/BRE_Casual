<xsl:stylesheet
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  version="1.0">
  <xsl:template match="@*|node()">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CraftingTemplate[@id='B2_OneHandedSword_Scabbard']/UsablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <UsablePiece piece_id="xiii_sword_blade_1" />
      <UsablePiece piece_id="xiii_sword_blade_3" />
      <UsablePiece piece_id="xiii_sword_guard_1" />
      <UsablePiece piece_id="xiii_sword_guard_2" />
      <UsablePiece piece_id="xiii_sword_guard_3" />
      <UsablePiece piece_id="xiii_sword_grip_1" />
      <UsablePiece piece_id="xiii_sword_grip_2" />
      <UsablePiece piece_id="xiii_sword_grip_3" />
      <UsablePiece piece_id="xiii_sword_pommel_1" />
      <UsablePiece piece_id="xiii_sword_pommel_2" />
      <UsablePiece piece_id="xiii_sword_pommel_3" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CraftingTemplate[@id='B2_TwoHandedSword']/UsablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <UsablePiece piece_id="xiii_2h_sword_blade_3" />
      <UsablePiece piece_id="xiii_2h_sword_guard_3" />
      <UsablePiece piece_id="xiii_2h_sword_grip_3" />
      <UsablePiece piece_id="xiii_2h_sword_pommel_3" />
      <UsablePiece piece_id="aloevera_blade" />
      <UsablePiece piece_id="aloevera_guard_low" />
      <UsablePiece piece_id="aloevera_grip" />
      <UsablePiece piece_id="aloeavera_pommel" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CraftingTemplate[@id='B2_TwoHandedAxe']/UsablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <UsablePiece piece_id="xiii_2h_axe_head_1" />
      <UsablePiece piece_id="xiii_2h_axe_head_2" />
      <UsablePiece piece_id="xiii_2h_axe_handle_1" />
      <UsablePiece piece_id="xiii_2h_axe_handle_2" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CraftingTemplate[@id='B2_BastardSword']/UsablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <UsablePiece piece_id="xiii_2h_sword_blade_1" />
      <UsablePiece piece_id="xiii_2h_sword_blade_2" />
      <UsablePiece piece_id="xiii_2h_sword_guard_1" />
      <UsablePiece piece_id="xiii_2h_sword_guard_2" />
      <UsablePiece piece_id="xiii_2h_sword_grip_1" />
      <UsablePiece piece_id="xiii_2h_sword_grip_2" />
      <UsablePiece piece_id="xiii_2h_sword_pommel_1" />
      <UsablePiece piece_id="xiii_2h_sword_pommel_2" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CraftingTemplate[@id='B2_TwoHandedPolearm_NoHorseStop']/UsablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <UsablePiece piece_id="b2_spear_banner_10_almo" />
      <UsablePiece piece_id="b2_spear_banner_10_ci" />
      <UsablePiece piece_id="b2_spear_banner_10_ipl" />
      <UsablePiece piece_id="b2_spear_banner_10_kotf" />
      <UsablePiece piece_id="b2_spear_banner_10_koh" />
      <UsablePiece piece_id="b2_spear_banner_10_vsc" />
      <UsablePiece piece_id="b2_spear_banner_10_xiii" />
      <UsablePiece piece_id="b2_spear_banner_10_host" />
      <UsablePiece piece_id="b2_spear_banner_10_svci" />
      <UsablePiece piece_id="b2_spear_banner_10_maw" />
      <UsablePiece piece_id="b2_spear_banner_10_vd" />
      <UsablePiece piece_id="b2_spear_banner_10_lbo_pre" />
      <UsablePiece piece_id="b2_spear_banner_10_lbo_vra" />
      <UsablePiece piece_id="b2_spear_banner_10_eich" />
      <UsablePiece piece_id="b2_spear_banner_10_bd" />

      <UsablePiece piece_id="xiii_spear_blade_1" />
      <UsablePiece piece_id="xiii_spear_guard_1" />
      <UsablePiece piece_id="xiii_spear_handle_1" />
      <UsablePiece piece_id="xiii_spear_pommel_1" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CraftingTemplate[@id='B2_OneHandedAxe']/UsablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <UsablePiece piece_id="xiii_axe_head_1" />
      <UsablePiece piece_id="xiii_axe_head_2" />
      <UsablePiece piece_id="xiii_axe_handle_1" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CraftingTemplate[@id='B2_OneHandedMace']/UsablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <UsablePiece piece_id="xiii_mace_head_1" />
      <UsablePiece piece_id="xiii_mace_head_2" />
      <UsablePiece piece_id="xiii_mace_head_3" />
      <UsablePiece piece_id="xiii_mace_handle_1" />
    </xsl:copy>
  </xsl:template>
  <xsl:template match="CraftingTemplate[@id='B2_TwoHandedMace']/UsablePieces">
    <xsl:copy>
      <xsl:apply-templates select="@*|node()" />
      <UsablePiece piece_id="xiii_2h_mace_head_1" />
      <UsablePiece piece_id="xiii_2h_mace_handle_1" />
      <UsablePiece piece_id="xiii_2h_mace_pommel_1" />
    </xsl:copy>
  </xsl:template>
</xsl:stylesheet>